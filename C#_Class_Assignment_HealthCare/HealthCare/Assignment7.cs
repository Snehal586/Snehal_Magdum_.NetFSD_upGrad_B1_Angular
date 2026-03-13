using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HealthCare
{
    class Nurse
    {
        public int NurseId { get; set; }
        public string NurseName { get; set; }
        public string Department { get; set; }
    }
    class Assi7
    {
        static void Main()
        {
            Nurse n1 = new Nurse
            {
                NurseId = 101,
                NurseName = "Sejal",
                Department = "ICU"
            };
            Console.WriteLine("Nurse Id:" + n1.NurseId);
            Console.WriteLine("Nurse Name:" + n1.NurseName);
            Console.WriteLine("Department:" + n1.Department);
        }
    }
}
