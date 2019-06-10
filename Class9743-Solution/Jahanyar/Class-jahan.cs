using System;
using System.Collections.Generic;
using System.Text;
using System.Management.Automation;

namespace Jahanyar
{
    [Cmdlet(VerbsDiagnostic.Trace, "MyClass")]
   public class ClassJahanCommand : Cmdlet
    {
        protected override void ProcessRecord()
        {
            WriteObject(" This is a test Only :D ");
        }
    }
}
