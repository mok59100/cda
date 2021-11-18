using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Diagnostics;
using System.Threading.Tasks;

namespace Interfaces
{
    static class ObjectHelper
    {
        public static void Dump(this object data)
        {
            string json = JsonConvert.SerializeObject(data, Formatting.Indented);
          Trace.WriteLine(json);
        }
    }
}