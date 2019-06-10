using System;
using System.Collections.Generic;
using System.Text;

namespace Tools.Microsoft
{
    public class PSUserEventLog : PSEventLog
    {
        public string User { get; set; }
        public string Action { get; set; }
    }
}
