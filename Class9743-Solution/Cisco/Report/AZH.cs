using System;
using System.Collections.Generic;
using System.Management.Automation;
using System.IO;
using System.Threading;


namespace Cisco.Report
{
    [Cmdlet(VerbsCommon.Show, "Azhdari")]
    public class AZH : MyReport
    {
        [Parameter(Position = 0, Mandatory = true, ValueFromPipeline = true, ValueFromPipelineByPropertyName = true)]
        public string DeviceName { get; set; }

        [ValidateSet("Telnet", "SSH", IgnoreCase = true)]
        [Parameter(Position = 1)]
        public string ConnectionType { get; set; } = "SSH";

        [Parameter(Position = 2)]
        public PSCredential Credential { get; set; }

        [Parameter(Position = 3)]
        public SwitchParameter ShowOutput { get; set; }



        //************************ PS Methodes *********************************

        protected override void ProcessRecord()
        {
            WriteObject(Azhdari(DeviceName, ConnectionType, Credential));
        }

        //************************ Global Methodes *********************************

        public List<PSObject> Azhdari(string deviceName, string connectionType, PSCredential credential = null,
                                      int delay = 1000, string terminalName = "", uint column = 100, uint row = 200, int buff = 2048)
        {
            StringReader output = new StringReader(RunCiscoCommand(deviceName, connectionType, "Show interfaces summary", credential, delay, terminalName, column, row, buff));
            List<PSObject> result = new List<PSObject>();
            List<HeaderDefinition> allAttribs = new List<HeaderDefinition>();
            string Temp = "";
            for (int i = 0; i < 8; i++)
            {
                output.ReadLine();
            }
            while (true)
            {
                string line = output.ReadLine();
                if (line != null)
                {
                    if ( line != "------------------------------------------------------------------------")
                    {
                        Temp += line;
                        Temp += Environment.NewLine;
                    }                  
                }
                else
                    break;
            }

            Temp = "X " + Temp.Substring(2, Temp.Length - 3);
            output = new StringReader(Temp);
            allAttribs.Add(new HeaderDefinition("X"));
            allAttribs.Add(new HeaderDefinition("Interface"));
            allAttribs.Add(new HeaderDefinition("IHQ"));
            allAttribs.Add(new HeaderDefinition("IQD"));
            allAttribs.Add(new HeaderDefinition("OHQ"));
            allAttribs.Add(new HeaderDefinition("OQD"));
            allAttribs.Add(new HeaderDefinition("RXBS"));
            allAttribs.Add(new HeaderDefinition("RXPS"));
            allAttribs.Add(new HeaderDefinition("TXBS"));
            allAttribs.Add(new HeaderDefinition("TXPS"));
            allAttribs.Add(new HeaderDefinition("TRTL"));
            return FillPSObjectOutput(output, allAttribs);
        }
    }
}
