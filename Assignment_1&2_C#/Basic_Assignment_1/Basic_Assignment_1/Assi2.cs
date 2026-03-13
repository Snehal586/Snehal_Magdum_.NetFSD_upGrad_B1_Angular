using System;
using System.Collections.Generic;
using System.Text;

namespace Basic_Assignment_1
{
    internal class Assi2
    {
        static void Main()
        {
            double km, m;
            Console.WriteLine("Enter the distance :");
            km= Convert.ToDouble(Console.ReadLine());

            m = 1000 * km;
            Console.WriteLine("The Distance in meter is : "+m);

        }
    }
}
