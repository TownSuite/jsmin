using DouglasCrockford.JsMin;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JsMin
{
    class Program
    {
        static void Main(string[] args)
        {
            string inFilePath = args[0];
            string outFilePath = args[1];
            string originalValue = System.IO.File.ReadAllText(inFilePath);

            var minifier = new JsMinifier();
            string result = minifier.Minify(originalValue);
            System.IO.File.WriteAllText(outFilePath, result);
        }
    }
}
