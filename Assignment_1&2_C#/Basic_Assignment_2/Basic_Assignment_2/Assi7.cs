using System;
using System.Collections.Generic;
using System.Text;

namespace Basic_Assignment_2
{
    internal class Assi7
    {
        static void Main()
        {
            int product, quantity;
            double total = 0;

            Console.Write("Enter product number (1-3): ");
            product = Convert.ToInt32(Console.ReadLine());

            Console.Write("Enter quantity sold: ");
            quantity = Convert.ToInt32(Console.ReadLine());

            if (product == 1)
                total = 22.5 * quantity;
            else if (product == 2)
                total = 44.50 * quantity;
            else if (product == 3)
                total = 9.98 * quantity;
            else
                Console.WriteLine("Enter correct product number please");

            Console.WriteLine("Total price: " + total);
        }
    }
}
