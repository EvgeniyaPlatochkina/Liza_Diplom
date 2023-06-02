using diplomliza1.Controls;
using diplomliza1.Data;
using diplomliza1.Data.Entities;
using diplomliza1.Services;
using diplomliza1.View;
using diplomliza1.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace diplomliza1.ViewModels
{
    public class ApplicantVacancyViewModePage : ViewModelBase
    {

        public ApplicantVacancyViewModePage(ApplicationDbContext ctx,JobVacancyService jobVacancyService, User applicant,QuestionareService questionareService)
        {
            _jobVacancyService = jobVacancyService;
            _questionareService = questionareService;
            _ctx = ctx;
            _applicant = applicant;
            UpdateLists();
        }
        private ApplicationDbContext _ctx;
        private QuestionareService _questionareService;
        private JobVacancyService _jobVacancyService;
        private User _applicant;
        private List<JobVacancy> _jobTitles;
        private string _searchJobTitle;
        private JobVacancy _selectedJobTitle;
        private Photo _selectedphoto;
        public JobVacancy SelectedJobTitle { get => _selectedJobTitle; set => Set(ref _selectedJobTitle, value, nameof(SelectedJobTitle)); }
        public List<JobVacancy> JobTitles { get => _jobTitles; set => Set(ref _jobTitles, value, nameof(JobTitles)); }
        private ICollection<JobVacancy> GetJobVacancy() => _jobVacancyService.GetJobTitle().ToList();
        private bool SelectedJobTitleIsNull() => SelectedJobTitle == null;
        private void UpdateLists()
        {
            JobTitles = new List<JobVacancy>(GetJobVacancy());

        }
        private void OpenAddJobTitleManagerWindow()
        {
            
            if (!SelectedJobTitleIsNull())
            {

                new QuestionnaireWindow(_ctx, SelectedJobTitle, _jobVacancyService,_questionareService, _applicant).ShowDialog();
                UpdateLists();
            }
            else
                MessageBox.Show("Выберите резюме", "Внимание!", MessageBoxButton.OK, MessageBoxImage.Information);
          
        }
        public ICommand OpenAddManagerWindow => new Command(addquestion => OpenAddJobTitleManagerWindow());
    }

}