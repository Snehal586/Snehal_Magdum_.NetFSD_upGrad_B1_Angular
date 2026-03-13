using System;
using System.Collections.Generic;
using System.Text;

namespace Basic_Assignment_1
{
    internal class Assi5
    {
        static void Main()
        {
            int a, b;

            Console.WriteLine("Enter 1st number: ");
            a = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Enter 2nd number: ");
            b = Convert.ToInt32(Console.ReadLine());

            if(a>b)
            {
                Console.WriteLine(a + "  number is greater");
            }
            else
            {
                Console.WriteLine(b + " number is greater");
            }

        }
    }
}
