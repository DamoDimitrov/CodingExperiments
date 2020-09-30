using System;
using System.Collections.Generic;
using System.Text;

namespace StudentsTask
{
    class Student
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }

        public int FacultyNumber { get; set; }

        public Student()
        {
        }

        public Student(string firstName, string lastName, int facultyNumber)
        {
            this.FirstName = firstName;
            this.LastName = lastName;
            this.FacultyNumber = facultyNumber;
        }
    }
}
