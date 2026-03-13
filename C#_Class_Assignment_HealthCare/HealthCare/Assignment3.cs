using System;
using System.Collections.Generic;
using System.Text;

namespace HealthCare
{
    class Hospital
    {
        public static string HospitalName;
        public static string HospitalAddress;
        public string PatientName;

        public void Display()
        {
            Console.WriteLine("Hospital Name: " + HospitalName);
            Console.WriteLine("Hospital Address: " + HospitalAddress);
            Console.WriteLine("Patient Name: " + PatientName);
            Console.WriteLine();
        }
        class Assi
        {
            static void Main()
            {
                Hospital.HospitalName = "Apple Hospital";
                Hospital.HospitalAddress = "Kolhapur";

                Hospital h1 = new Hospital();
                Hospital h2 = new Hospital();
                Hospital h3 = new Hospital();

                h1.PatientName = "Priyanka";
                h2.PatientName = "Nayana";
                h3.PatientName = "Divya";

                h1.Display();
                h2.Display();
                h3.Display();

            }
        }
    }

    }
