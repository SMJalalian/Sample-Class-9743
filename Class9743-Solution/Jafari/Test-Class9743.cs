using System;
using System.Collections.Generic;
using System.Text;
using System.Management.Automation;

namespace Jafari
{
    [Cmdlet(VerbsDiagnostic.Test,"Class9743")]	
    class Test_Class9743Command : Cmdlet
    {
	protected override void BeginProcessing()
        {
            WriteObject("This is a test of the BeginProcessing template.");
        }
    }
}
