using System;
using System.Collections.Generic;
using System.Text;
using System.Management.Automation;

namespace Jalalian
{
    [Cmdlet(VerbsDiagnostic.Test,"Class9743")]
    public class TestClass9743Command : Cmdlet
    {
        [Parameter(Position = 0, Mandatory = true)]
        public string Name = "";

        [Parameter(Position = 1)]
        public SwitchParameter ShowOutput;

        protected override void ProcessRecord()
        {
            if (ShowOutput)
            {
                WriteObject("You Type name of " + Name);
            }
            else
            {
                WriteObject("Output is hidden");               
            }
            
        }
    }
}
