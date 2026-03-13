using System;
using System.Collections.Generic;
using System.Text;

namespace Basic_Assignment_2
{
    internal class Assi11
    {
        static void Main()
        {
            Console.WriteLine("Enter a number");
            int num = Convert.ToInt32(Console.ReadLine());

            for(int i= num; i<=20; i++)
            {
                Console.WriteLine(num * i);
            }
        }
    }
}
