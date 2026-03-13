using System;


namespace HealthCare
{
    class Doctor
    {
        public int DoctorId;
        public string DoctorName;
        public string Specialization;
        public int ConsultationFee;

        

    }
    class Demo
    {
        static void Main()
        {
            Doctor d1 = new Doctor();
            Doctor d2 = new Doctor();

            d1.DoctorId = 101;
            d1.DoctorName = "Snehal";
            d1.Specialization = "Genral";
            d1.ConsultationFee = 300;

            d2.DoctorId = 102;
            d2.DoctorName = "Shweta";
            d2.Specialization = "Dentis";
            d2.ConsultationFee = 600;

            Console.WriteLine("Doctor 1 details");
            Console.WriteLine("Doctor ID: "+ d1.DoctorId);
            Console.WriteLine("Doctor Name: "+d1.DoctorName);
            Console.WriteLine("Doctor specialization :"+d1.Specialization);
            Console.WriteLine("Doctor Consultation Fee: "+d1.ConsultationFee);

            Console.WriteLine();

            Console.WriteLine("Doctor 2 details");
            Console.WriteLine("Doctor ID: " + d1.DoctorId);
            Console.WriteLine("Doctor Name: " + d1.DoctorName);
            Console.WriteLine("Doctor specialization :" + d1.Specialization);
            Console.WriteLine("Doctor Consultation Fee: " + d1.ConsultationFee);



        }  

    }
    


    }
