using System;
using System.Collections.Generic;
using System.Text;

namespace Basic_Assignment_2
{
    internal class Assi17
    {
        static void Main()
        {
            string word;
            Console.WriteLine("Enter the word");
            word= Console.ReadLine();

            string reverse = new string(word.Reverse().ToArray());

            Console.WriteLine(reverse);
        }
    }
}
