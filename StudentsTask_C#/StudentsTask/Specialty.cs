using System;
using System.Collections.Generic;

namespace StudentsTask
{
    class Specialty
    {
        public int Id { get; set; }
        public string Name { get; set; }

        public List<Student> Students { get; set; }

        public Specialty()
        {
            Students = new List<Student>();
        }

        public Specialty(int id, string name)
        {
            this.Id = id;
            this.Name = name;
            Students = new List<Student>();
        }
    }
}
