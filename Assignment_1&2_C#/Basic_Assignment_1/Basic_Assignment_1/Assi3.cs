using System;
using System.Collections.Generic;
using System.Text;

namespace Basic_Assignment_1
{
    internal class Assi3
    {
        static void Main()
        {
            int a, b, c, d, e, sum;
            double avg;

            Console.WriteLine("Enter 1st number: ");
            a = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Enter 1st number: ");
            b = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Enter 1st number: ");
            c = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Enter 1st number: ");
            d = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Enter 1st number: ");
            e = Convert.ToInt32(Console.ReadLine());

            sum = a + b + c + d + e;
            avg = sum / 5;
            Console.WriteLine("Sum of 5 numbers is : "+sum);
            Console.WriteLine("Average is: "+avg);

        }
    }
}
