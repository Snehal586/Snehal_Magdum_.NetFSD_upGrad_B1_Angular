using System;
using System.Collections.Generic;
using System.Text;

namespace Basic_Assignment_2
{
    internal class Assi5
    {
        static void Main()
        {
            int n, num, even = 0, odd = 0;

            Console.Write("How many numbers you want to enter: ");
            n = Convert.ToInt32(Console.ReadLine());

            for (int i = 1; i <= n; i++)
            {
                Console.Write("Enter number: ");
                num = Convert.ToInt32(Console.ReadLine());

                if (num % 2 == 0)
                    even++;
                else
                    odd++;
            }

            Console.WriteLine("Total Even Numbers: " + even);
            Console.WriteLine("Total Odd Numbers: " + odd);
        }

    }
}
