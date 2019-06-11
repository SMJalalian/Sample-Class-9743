using System;
using System.Collections.Generic;
using System.Text;

namespace Tools.Microsoft
{
    public class PSGroupEventLog : PSEventLog
    {
        public string Member { get; set; }
        public string Group { get; set; }
    }
}
