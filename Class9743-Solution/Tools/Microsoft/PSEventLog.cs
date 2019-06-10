using System;
using System.Collections.Generic;
using System.Text;

namespace Tools.Microsoft
{
    public class PSEventLog
    {
        public string Host { get; set; }
        public string Subject { get; set; }
        public string SubjectFullName { get; set; }
        public DateTime Date { get; set; }
        public long EventID { get; set; }
        public string Type { get; set; }
        public string Description { get; set; }

        //public List<string[]> SplitLogMessage (EventLogEntry log)
        //{
        //    List<string[]> result = new List<string[]>();
        //    StringReader strReader = new StringReader(log.Message.ToString());
        //    while (true)
        //    {
        //        string aLine = strReader.ReadLine();
        //        if (aLine != null)
        //        {
        //            string[] parts = aLine.Split(new string[] { "\t" }, StringSplitOptions.RemoveEmptyEntries);
        //            result.Add(parts);
        //        }
        //        else
        //            break;
        //    }
        //    return result;
        //}
    }
}
