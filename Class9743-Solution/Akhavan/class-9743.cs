using System;
using System.Collections.Generic;
using System.Text;
using System.Management.Automation;
namespace Akhavan
{
    [Cmdlet(VerbsDiagnostic.Test, "class_9743")]
    public class Class_9743 : Cmdlet
    {
        protected override void ProcessRecord()
        {
            WriteObject("this is a test ");
        }
    }
}
