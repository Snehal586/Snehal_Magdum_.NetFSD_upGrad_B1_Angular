using System;
using System.Collections.Generic;
using System.Text;

namespace Basic_Assignment_1
{
    internal class Assi1
    {
        static void Main()
        {
            int n1, n2;
            double q;

            Console.WriteLine("Enter First Number: ");
            n1 = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Enter First Number: ");
            n2 = Convert.ToInt32(Console.ReadLine());

            q = (double)n1 / n2;
            Console.WriteLine("Quotient = " + q);

        }
    }
}
