using System;
using System.Collections.Generic;
using System.Text;
using System.Management.Automation;

namespace Karimian
{
    [Cmdlet(VerbsDiagnostic.Test, "SaeedTest")]
    public class Saeed_Test_command : Cmdlet
    {
        protected override void BeginProcessing()
        {
            WriteObject("Hello saeed.");
        }
    }
}
