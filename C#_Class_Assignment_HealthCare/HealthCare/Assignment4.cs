using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HealthCare
{
    class Appointment
    {
        public int AppointmentId;
        public string PatientName;
        public string DoctorName;
        public DateTime AppointmentDate;

        // Default Constructor
        public Appointment()
        {
            DoctorName = "General Physician";
            AppointmentDate = DateTime.Today;
        }

        public void Display()
        {
            Console.WriteLine("Appointment Id: " + AppointmentId);
            Console.WriteLine("Patient Name: " + PatientName);
            Console.WriteLine("Doctor Name: " + DoctorName);
            Console.WriteLine("Appointment Date: " + AppointmentDate);
        }
    }

    class Assi4
    {
        static void Main()
        {
            Appointment a1 = new Appointment();

            a1.AppointmentId = 101;
            a1.PatientName = "Snehal";

            a1.Display();
        }
    }
}
