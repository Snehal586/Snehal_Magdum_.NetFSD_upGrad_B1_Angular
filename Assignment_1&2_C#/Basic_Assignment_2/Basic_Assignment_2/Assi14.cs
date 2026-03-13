using System;
using System.Collections.Generic;
using System.Text;

namespace Basic_Assignment_2
{
    internal class Assi14
    {
        static void Main()
        {
            Console.WriteLine("Enter a 1st number:");
            int a = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Enter a 2nd number:");
            int b = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Enter a 3rd number:");
            int c = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Enter a 4th number:");
            int d = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Enter a 5th number:");
            int e = Convert.ToInt32(Console.ReadLine());



            if (a < b && a < c && a<d && a<e)
            {
                Console.WriteLine(a + " is smaller");
            }
            if (b < a && b < c && b<d && b<e)
            {
                Console.WriteLine(b + " is smaller");
            }
            if (c < a && c < b && c<d && c<e)
            {
                Console.WriteLine(c + " is smaller");
            }
            if (d < a && d < b && d< c && d<e)
            {
                Console.WriteLine(d + " is smaller");
            }

            else
            {
                Console.WriteLine(e + " is smaller");
            }
        }
    }
}
