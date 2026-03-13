using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HealthCare
{
    class Billing
    {
        public string PatientName;
        public int ConsultationFee;
        public int TestCharges;

        public void CalculateTotalBill()
        {
            int total = ConsultationFee + TestCharges;

            Console.WriteLine("Patient Name: " + PatientName);
            Console.WriteLine("Total Bill: " + total);
        }
    }

    class Assi6
    {
        static void Main()
        {
            Billing b1 = new Billing();

            b1.PatientName = "Snehal";
            b1.ConsultationFee = 1500;
            b1.TestCharges = 800;

            b1.CalculateTotalBill();
        }
    }
}
