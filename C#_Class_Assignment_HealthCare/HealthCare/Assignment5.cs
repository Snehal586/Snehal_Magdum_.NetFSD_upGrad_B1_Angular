using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;

namespace HealthCare
{
    class MedicalTest
    {
        public int TestId;
        public string TestName;
        public double TestCost;

        public MedicalTest(int id, string name, double cost)
        {
            TestId = id;
            TestName = name;
            TestCost = cost;
        }
            public void Display()
            {
            Console.WriteLine("Test Id: " + TestId);
            Console.WriteLine("Test Name: " + TestName);
            Console.WriteLine("Test Cost: " + TestCost);
            Console.WriteLine();
            }
        }
    class Assi5
    {
        static void Main()
        {
            MedicalTest t1 = new MedicalTest(1, "Blood Test", 850);
            MedicalTest t2 = new MedicalTest(2, "X-Ray", 1800);

            t1.Display();
            t2.Display();

        }
    }
}


