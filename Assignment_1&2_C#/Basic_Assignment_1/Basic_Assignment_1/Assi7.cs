using System;
using System.Collections.Generic;
using System.Text;

namespace Basic_Assignment_1
{
    internal class Assi7
    {
        static void Main()
        {
            double distance, time, speed;

            Console.WriteLine("Enter the distance : ");
            distance = Convert.ToDouble(Console.ReadLine());

            Console.WriteLine("Enter the speed : ");
            speed = Convert.ToDouble(Console.ReadLine());

            time = distance / speed;

            Console.WriteLine("Time : "+ time);



        }
        


    }
}
