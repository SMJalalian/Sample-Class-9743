using System;
using System.Security;
using Cisco.Report;
using System.Management.Automation;

namespace Z_TestConsole
{
    class Program
    {
        static void Main(string[] args)
        {
            //System.IO.File.Copy(@"C:\Workspaces\DevOps\SMJalalian\Network Automation\Z_Manifest Module\Network Automation.psd1",
            //                    @"C:\Program Files\PowerShell\6\Modules\Network Automation\Network Automation.psd1", true);
            //**********************************************************************************************************************
            SecureString SecPass = new SecureString();
            SecPass.AppendChar('a');
            SecPass.AppendChar('d');
            SecPass.AppendChar('m');
            SecPass.AppendChar('i');
            SecPass.AppendChar('n');
            PSCredential Cred = new PSCredential("admin", SecPass);

            //SendNACiscoCommandCommand Y = new SendNACiscoCommandCommand();
            //string Output = Y.RunCiscoCommand("192.168.100.2","Telnet", "show cdp neighbors", Cred);
            //Console.WriteLine(Output);

<<<<<<< HEAD
            ShowARPCommand X = new ShowARPCommand();
            X.ShowARP("192.168.30.151", "Telnet", Cred);
=======
            AZH X = new AZH();
            X.Azhdari("192.168.30.151", "SSH", Cred);
>>>>>>> 772419e6c85d457c7392790fde7fe038af9fd3b9

            //ShowARPCommand Z = new ShowARPCommand();
            //Z.ShowARP("192.168.100.2", "Telnet", Cred);

            //**********************************************************************************************************************
            Console.WriteLine("Hello World!");            
        }
    }
}
