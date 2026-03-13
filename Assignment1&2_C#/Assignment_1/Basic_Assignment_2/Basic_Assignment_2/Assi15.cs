using System;
using System.Collections.Generic;
using System.Runtime.Intrinsics.X86;
using System.Text;

namespace Basic_Assignment_2
{
    internal class Assi15
    {
        static void Main()
        {
            Console.WriteLine("Enter a 1st subject marks:");
            int sub1 = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Enter a 2nd subject marks:");
            int sub2 = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Enter a 3rd subject marks:");
            int sub3 = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Enter a 4th subject marks:");
            int sub4 = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Enter a 5th subject marks:");
            int sub5 = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Enter a 6th subject marks:");
            int sub6 = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Enter a 7th subject marks:");
            int sub7 = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Enter a 8th subject marks:");
            int sub8 = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Enter a 9th subject marks:");
            int sub9 = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Enter a 10th subject marks:");
            int sub10 = Convert.ToInt32(Console.ReadLine());

            int total = sub1 + sub2 + sub3 + sub4 + sub5 + sub6 + sub7 + sub8 + sub9 + sub10;
            int Avg = total / 10;

            Console.WriteLine("Total = " + total);
            Console.WriteLine("Average = " + Avg);

            int[] marks = { sub1, sub2, sub3, sub4, sub5, sub6, sub7, sub8, sub9, sub10 };

            int min = marks[0];
            int max = marks[0];

            for (int i = 1; i < 10; i++)
            {
                if (marks[i] < min)
                    min = marks[i];

                if (marks[i] > max)
                    max = marks[i];
            }

            Console.WriteLine("Minimum marks = " + min);
            Console.WriteLine("Maximum marks = " + max);

            Array.Sort(marks);

            Console.WriteLine("Ascending Order:");
            for (int i = 0; i < 10; i++)
                Console.Write(marks[i] + " ");

            Console.WriteLine();

            Console.WriteLine("Descending Order:");
            for (int i = 9; i >= 0; i--)
                Console.Write(marks[i] + " ");


        }
    }
}
