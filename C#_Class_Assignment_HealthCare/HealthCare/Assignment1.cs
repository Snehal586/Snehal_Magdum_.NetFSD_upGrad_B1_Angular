namespace HealthCare
{
    class Patient
    {
        public int PatientId;
        public string PatientName;
        public int Age;
        public string Disease;

    }
    class Program
    {
        static void Main(string[] args)
        {
            Patient p = new Patient();

            p.PatientId = 101;
            p.PatientName = "Ravi Kumar";
            p.Age = 45;
            p.Disease = "Diabetes";

            Console.WriteLine("Patient Id: " + p.PatientId);
            Console.WriteLine("Patient name: " + p.PatientName);
            Console.WriteLine("Age: " + p.Age);
            Console.WriteLine("Disease: " + p.Disease);

        }
    }
}
