using System;
using System.Collections.Generic;
using System.Text;
using System.Management.Automation;

namespace ShokouhMaghami
{   
    [Cmdlet(VerbsDiagnostic.Test,"Sentence")]
    public class Class_9743 : Cmdlet
    {
        protected override void ProcessRecord()
        {
            WriteObject("Hello, World! :)");
        }
    }
}
