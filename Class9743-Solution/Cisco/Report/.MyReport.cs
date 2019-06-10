using System;
using System.Management.Automation;
using System.IO;
using System.Collections.Generic;

namespace Cisco.Report
{
    public class MyReport : MyCisco
    {
        public string LogService { get; private set; } = "Report";

        public List<PSObject> FillPSObjectOutput(StringReader output, List<HeaderDefinition> allAttribs)
        {
            List<PSObject> result = new List<PSObject>();
            string HeadLine = output.ReadLine();
            string[] str = HeadLine.Split(new char[0]);
            int j = 0;
            foreach (string item in str)
            {
                if (item != "")
                {
                    allAttribs[j].Start = HeadLine.IndexOf(item);
                    allAttribs[j].End = allAttribs[j].Start + item.Length - 1;
                    j++;
                }
            }
            while (true)
            {
                string dataLine = output.ReadLine();
                if (dataLine != null)
                {
                    PSObject psTemp = new PSObject();
                    for (int i = 0; i < allAttribs.Count; i++)
                    {
                        string data = "";
                        if (i == allAttribs.Count - 1)
                            data = dataLine.Substring(allAttribs[i].Start, (dataLine.Length - allAttribs[i].Start));
                        else
                            data = dataLine.Substring(allAttribs[i].Start, (allAttribs[i + 1].Start - (allAttribs[i].Start) - 1));
                        data = data.TrimEnd();
                        if (data.Length == 0)
                            psTemp.Members.Add(new PSNoteProperty(allAttribs[i].Property, null));
                        else
                            psTemp.Members.Add(new PSNoteProperty(allAttribs[i].Property, data));
                    }

                    result.Add(psTemp);
                }
                else
                    break;
            }
            return result;
        }
    }

    public class HeaderDefinition
    {
        public string Property;
        public int Start;
        public int End;
        public TypeCode FieldType;

        public HeaderDefinition()
        {
            Property = null;
            Start = 0;
            End = 0;
        }
        public HeaderDefinition(string property, int start = 0, int end = 0)
        {
            Property = property;
            Start = start;
            End = end;
        }

    }
}
