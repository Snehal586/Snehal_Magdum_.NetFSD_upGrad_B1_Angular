using System;
using System.Collections.Generic;
using System.Security.Cryptography;
using System.Text;

namespace Basic_Assignment_2
{
    internal class Assi3
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Enter first number ");
            int n1 = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Enter 2nd number");
            int n2 = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Numbers between " + n1 + " and " + n2 + " are :");

            for (int i=n1+1; i < n2; i++)
            {
            
                Console.WriteLine(i);
                
             } 

        }
    }
}
