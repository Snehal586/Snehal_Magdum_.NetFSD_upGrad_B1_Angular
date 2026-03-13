using System;
using System.Collections.Generic;
using System.Text;

namespace Basic_Assignment_2
{
    internal class Assi19
    {
        static void Main()
        {
            string word, reverse = "";

            Console.Write("Enter a word: ");
            word = Console.ReadLine();

            for (int i = word.Length - 1; i >= 0; i--)
            {
                reverse = reverse + word[i];
            }

            if (word == reverse)
                Console.WriteLine("Palindrome");
            else
                Console.WriteLine("Not Palindrome");
        }
    }
}
