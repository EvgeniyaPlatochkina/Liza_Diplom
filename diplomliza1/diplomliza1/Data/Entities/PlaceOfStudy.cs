using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace diplomliza1.Data.Entities
{
    public class PlaceOfStudy
    {
        public PlaceOfStudy()
        {
            Staffs = new HashSet<Staff>();
            Questionnares = new HashSet<Questionnare>();
        }

        public int Id { get; set; }
        public string Title { get; set; } = null!;
        public string Speciality { get; set; } = null!;
        public int EducationId { get; set; } = 0!;
        public Education Education { get; set; } 
        public ICollection<Staff> Staffs { get; set; }
        public ICollection<Questionnare> Questionnares { get; set; }
    }
}
