using System;
using System.Collections.Generic;
using System.Text;

namespace Basic_Assignment_2
{
    internal class Assi18
    {
        static void Main()
        {
            string word1;
            string word2;

            Console.WriteLine("Enter 1st word");
            word1 = Console.ReadLine();
            Console.WriteLine("Enter 2nd word");
            word2 = Console.ReadLine();

            if(word1 == word2)
            {
                Console.WriteLine("both words are same");
            }
            else
            {
                Console.WriteLine("Words are not same");
            }


        }
    }
}
