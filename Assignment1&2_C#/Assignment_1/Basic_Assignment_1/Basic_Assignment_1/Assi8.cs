using System;
using System.Collections.Generic;
using System.Text;

namespace Basic_Assignment_1
{
    internal class Assi8
    {
        static void Main()
        {
            string s;
            char c;

            Console.WriteLine("Enter a String :");
            s = Console.ReadLine();

            if(s.Length >= 3)
            {
                c = s[2];

                if (c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u' ||
                    c == 'A' || c == 'E' || c == 'I' || c == 'O' || c == 'U')
                {
                    Console.WriteLine("3rd character is vowel");
                }
                else
                {
                    Console.WriteLine("3rd character is consonant");
                }
            }
            else
            {
                Console.WriteLine("string must contain atleast 3 characters");
            }
        }
    }
}
