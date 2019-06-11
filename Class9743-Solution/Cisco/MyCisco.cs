using System;
using System.Management.Automation;
using System.IO;
using System.Threading;
using Renci.SshNet;
using Renci.SshNet.Common;
using Tools.Connections;
using System.Net.Sockets;
using System.Text;
using System.Runtime.InteropServices;
using System.Security;

namespace Cisco
{
    public class MyCisco : Cmdlet
    {
        public string LogCategory { get; private set; } = "Cisco";

        public string RunCiscoCommand(string deviceName, string connectionType, string command, PSCredential credential = null,
                              int delay = 1000, string terminalName = "", uint column = 100, uint row = 200, int buff = 2048)
        {
            StringReader strReader = new StringReader(command);
            string result = "";
            if (connectionType == "SSH")
            {
                SshClient device = new SshClient(deviceName, credential.UserName, SecureStringToString(credential.Password));
                device.HostKeyReceived += delegate (object sender, HostKeyEventArgs e)
                {
                    e.CanTrust = true;
                };
                device.Connect();

                ShellStream Stream = device.CreateShellStream(terminalName, column, row, column, row, buff);
                while (true)
                {
                    string line = strReader.ReadLine();
                    if (line != null)
                    {
                        result += Stream.ReadLine();
                        Stream.WriteLine(line);
                        Thread.Sleep(delay);
                    }
                    else
                        break;
                }
                result += Stream.Read();
                device.Disconnect();
                result = result.Substring(result.IndexOf(System.Environment.NewLine) + System.Environment.NewLine.Length);
                result = result.Remove(result.TrimEnd().LastIndexOf(Environment.NewLine));
                return result;
            }
            else if (connectionType == "Telnet")
            {
                Telnet telnetClient = new Telnet(deviceName, 23);
                telnetClient.Login(credential.UserName, SecureStringToString(credential.Password), 100);
                while (true)
                {
                    string temp = "";
                    string line = strReader.ReadLine();
                    if (line != null)
                    {
                        telnetClient.WriteLine(line);
                        Thread.Sleep(delay);
                        temp = telnetClient.Read();
                        result += temp;
                        if (temp.IndexOf("--More--") > 0)
                        {
                            do
                            {
                                telnetClient.Write(" ");
                                temp = telnetClient.Read();
                                result += temp;
                                if (temp.IndexOf("--More--") < 0)
                                    break;
                            } while (true);
                        }
                    }
                    else
                        break;
                }
                telnetClient.Disconnect();
                if (result.Split('\n').Length > 2)
                {
                    result = result.TrimStart();
                    result = result.TrimEnd();
                    result = result.Substring(result.IndexOf(Environment.NewLine) + Environment.NewLine.Length);
                    result = result.Remove(result.LastIndexOf(Environment.NewLine));
                }
                else
                    result = null;
                return result;
            }
            return null;
        }

        public string SecureStringToString(SecureString value)
        {
            IntPtr valuePtr = IntPtr.Zero;
            try
            {
                valuePtr = Marshal.SecureStringToGlobalAllocUnicode(value);
                return Marshal.PtrToStringUni(valuePtr);
            }
            finally
            {
                Marshal.ZeroFreeGlobalAllocUnicode(valuePtr);
            }
        }
    }
}
