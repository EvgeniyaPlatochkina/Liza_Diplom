﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace diplomliza1.Data.Entities
{
    public class Questionnare
    {


        public int Id { get; set; }
        public string FirstName { get; set; } = null!;
        public string LastName { get; set; } = null!;
        public string MiddleName { get; set; }
        public string Photo { get; set; }

        public DateTime DateOfBirth { get; set; }
        public string Email { get; set; } = null!;
        public int Phone { get; set; } = 0!;
        public int WorkExperienceId { get; set; }
        public int FamilyStatusId { get; set; }
        public int MilitryDutyId { get; set; }
        public int GenderId { get; set; }
        public int JobTitleId { get; set; }
        public int PlaceOfStudyId { get; set; }

        public FamilyStatus FamilyStatus { get; set; } = null!;
        public MilitryDuty MilitryDuty { get; set; } = null!;
        public Gender Gender { get; set; } = null!;
        public JobVacancy JobTitle { get; set; } = null!;
        public PlaceOfStudy PlaceOfStudy { get; set; } = null!;
        public WorkExperience WorkExperience { get; set; } //один к одному
        public string Recommendations { get; set; } 
        public string Skills { get; set; } 
        public string PersonalQualities { get; set;} = null!;
        public string AboutMe { get; set; } = null!;
    }
}
