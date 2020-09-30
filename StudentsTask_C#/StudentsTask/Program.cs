using System;
using System.Linq;

namespace StudentsTask
{
    class Program
    {
        static void Main(string[] args)
        {
            const string StudentFName = "Ivan";
            const string StudentLName = "Ivanov";
            var specialty = new Specialty(1, "Computer Science");


            /* Adding more than 3 students so my filtering and ordering would make logic*/
            for(int i = 0; i < 20; i++)
            {
                Student student = new Student(StudentFName + i.ToString(), StudentLName + i.ToString(), i);
                specialty.Students.Add(student);
            }

            var descSt = from student in specialty.Students
                         where student.FirstName.Contains("2")
                         orderby student.FirstName descending
                         select student;

            foreach(var st in descSt)
            {
                Console.WriteLine(st.FirstName);
            }
            
        }
    }
}
