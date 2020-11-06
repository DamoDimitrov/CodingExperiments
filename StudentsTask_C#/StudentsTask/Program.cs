using System;
using System.Linq;
using System.Text;

namespace StudentsTask
{
    class Program
    {
        static void Main(string[] args)
        {
            string alp = "0ABCDEFGHIJKLMNOPQRSTUVWXYZ";
            int n = 132;
            StringBuilder result = new StringBuilder();

            while (n >= 1)
            {
                result.Insert(0, alp[n % 26]);
                n /= 26;
            } 

            Console.Write(result.ToString());
        }
    }
}
