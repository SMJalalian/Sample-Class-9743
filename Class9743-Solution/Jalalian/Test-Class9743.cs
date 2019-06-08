using System;
using System.Collections.Generic;
using System.Text;
using System.Management.Automation;

namespace Jalalian
{
    [Cmdlet(VerbsDiagnostic.Test,"Class9743")]
    public class TestClass9743Command : Cmdlet
    {
        protected override void ProcessRecord()
        {
            WriteObject("This is a test of the ProcessRecord template.");
        }
    }
}
