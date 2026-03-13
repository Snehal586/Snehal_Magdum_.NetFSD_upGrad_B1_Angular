using System;
using System.Collections.Generic;
using System.Text;

namespace Basic_Assignment_2
{
    internal class Assi9
    {
        static void Main()
        {
            int n, fact = 1;
            Console.WriteLine("Enter a number: ");
            n = Convert.ToInt32(Console.ReadLine());

            for(int i=1; i<=n; i++)
            {
                fact = fact * i;
            }
            Console.WriteLine("Factorial= "+ fact);
        }
    }
}
