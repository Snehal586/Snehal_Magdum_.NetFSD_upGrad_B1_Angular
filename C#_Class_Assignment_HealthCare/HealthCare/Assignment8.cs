using System;

namespace HealthCare
{
    class PatientRecord
    {
        public int PatientId { get; set; }
        public string PatientName { get; set; }
        public int Age { get; set; }
        public string Disease { get; set; }

        public static string HospitalName;

        public PatientRecord(int id, string name, int age, string disease)
        {
            PatientId = id;
            PatientName = name;
            Age = age;
            Disease = disease;
        }

        public void DisplayPatientRecord()
        {
            Console.WriteLine("Hospital: " + HospitalName);
            Console.WriteLine("Patient Id: " + PatientId);
            Console.WriteLine("Name: " + PatientName);
            Console.WriteLine("Age: " + Age);
            Console.WriteLine("Disease: " + Disease);
            Console.WriteLine();
        }
    }

    class Assi8
    {
        static void Main()
        {
            PatientRecord.HospitalName = "Apple Hospital";

            PatientRecord p1 = new PatientRecord(101, "Ziya", 40, "Fever");
            PatientRecord p2 = new PatientRecord(102, "Rinku", 55, "Cold");
            PatientRecord p3 = new PatientRecord(103, "Diya", 60, "Diabetes");

            p1.DisplayPatientRecord();
            p2.DisplayPatientRecord();
            p3.DisplayPatientRecord();
        }
    }
}
