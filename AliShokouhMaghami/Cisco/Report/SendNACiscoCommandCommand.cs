using System;
using System.Management.Automation;
using System.IO;
using Renci.SshNet;
using Renci.SshNet.Common;
using System.Threading;

namespace Cisco.Report
{
    [Cmdlet(VerbsCommunications.Send,"NACiscoCommand")]
    public class SendNACiscoCommandCommand : MyReport
    {       
        [Parameter(Position = 0, Mandatory = true, ValueFromPipeline = true, ValueFromPipelineByPropertyName = true)]
        public string DeviceName { get; set; }

        [ValidateSet("Telnet", "SSH", IgnoreCase = true)]
        [Parameter(Position = 1)]
        public string ConnectionType { get; set; } = "SSH";

        [Parameter(Position = 2, Mandatory = true)]
        public string Command { get; set; }

        [Parameter(Position = 3)]
        public PSCredential Credential { get; set; }

        [Parameter(Position = 4)]
        public SwitchParameter ShowOutput { get; set; }


        //************************ PS Methodes *********************************

        protected override void ProcessRecord()
        {
            if (ShowOutput)
                WriteObject(RunCiscoCommand(DeviceName, ConnectionType, Command, Credential), true);
            else      
                RunCiscoCommand(DeviceName, ConnectionType, Command, Credential);
        }

        //************************ Global Methodes *********************************

    }
}
