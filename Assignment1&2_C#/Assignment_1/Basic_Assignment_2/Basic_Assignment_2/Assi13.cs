using System;
using System.Collections.Generic;
using System.Text;

namespace Basic_Assignment_2
{
    internal class Assi13
    {
        static void Main()
        {
            Console.WriteLine("Enter a 1st number:");
            int a = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Enter a 2nd number:");
            int b = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Enter a 3rd number:");
            int c = Convert.ToInt32(Console.ReadLine());

            if(a>b && a>c)
            {
                Console.WriteLine(a + " is greater");
            }
            if(b>a && b>c)
            {
                Console.WriteLine(b + " is greater");
            }
            else
            {
                Console.WriteLine(c + " is greater");
            }
        }
    }
}
