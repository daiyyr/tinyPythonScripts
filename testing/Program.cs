using System;
using System.Collections.Generic;

namespace HelloWorld
{


        class bc_unit{
            public int bcid = 0;
            public int unitid = 0;
        }

    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");

            var tt = System.Text.RegularExpressions.Regex.Matches("4353246", @"[a-zA-Z]").Count;
            Console.WriteLine(tt);

            bc_unit a= new bc_unit();
            a.bcid = 1;
            a.unitid = 2;

            Dictionary<bc_unit, int> minimisedCreditorL = new Dictionary<bc_unit, int>();

            minimisedCreditorL.Add(a,1);

            bc_unit b= new bc_unit();
            b.bcid = 1;
            b.unitid = 2;

            bool c = minimisedCreditorL.ContainsKey(b);
            Console.WriteLine(c);
        }
    }
}
