using System;
using System.Collections.Generic;
using System.Management.Automation;
using System.IO;

namespace Cisco.Report
{
    [Cmdlet(VerbsCommon.Show, "NACiscoInterfaceDescription")]
    public class ShowInterfaceDescriptionCommand : MyReport
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
            WriteObject(ShowInterfaceDescription(DeviceName, ConnectionType, Credential));
        }

        //************************ Global Methodes *********************************

        public List<PSObject> ShowInterfaceDescription(string deviceName, string connectionType, PSCredential credential = null,
                                      int delay = 1000, string terminalName = "", uint column = 100, uint row = 200, int buff = 2048)
        {
            StringReader output = new StringReader(RunCiscoCommand(deviceName, connectionType, "Show Interface Description", credential, delay, terminalName, column, row, buff));
            List<PSObject> result = new List<PSObject>();
            List<HeaderDefinition> allAttribs = new List<HeaderDefinition>();
            allAttribs.Add(new HeaderDefinition("Interface"));
            allAttribs.Add(new HeaderDefinition("Status"));
            allAttribs.Add(new HeaderDefinition("Protocol"));
            allAttribs.Add(new HeaderDefinition("Description"));
            return FillPSObjectOutput(output, allAttribs);
        }
    }
}
