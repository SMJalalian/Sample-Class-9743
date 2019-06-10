using System;
using System.Collections.Generic;
using System.Text;
using System.Management.Automation;

namespace Jafari
{
    [Cmdlet(VerbsCommunications.Send,"Class9743")]	
    public class JafariCommand : Cmdlet
    {
	protected override void BeginProcessing()
        {
            WriteObject("This is my 1st SEND Command!");
        }
    }
}
