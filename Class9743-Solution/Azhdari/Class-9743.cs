using System;
using System.Collections.Generic;
using System.Text;
using System.Management.Automation;

namespace Azhdari
{
    [Cmdlet(VerbsDiagnostic.Test, "EHSAN")]
    public class TESTEhsan : Cmdlet
    {
        protected override void ProcessRecord()
        {
            WriteObject("This is a TEST For EHSAN");
        }
    }
}