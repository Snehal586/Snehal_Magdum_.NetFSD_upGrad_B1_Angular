using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Drawing;
using System.Security.Principal;
using System.Text;

namespace Basic_Assignment_1
{
    internal class Assi6
    {
        static void Main ()
        {
            int width, length, side;

            Console.WriteLine("Enter the width : ");
            width = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Enter the length : ");
            length = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Enter the side : ");
            side = Convert.ToInt32(Console.ReadLine());

            int AreaRect = width * length;
            int AreaSqu = side * side;

            Console.WriteLine("Area of Rectangle : " + AreaRect);
            Console.WriteLine("Area of Square : " + AreaSqu); 

        }
    }
}
