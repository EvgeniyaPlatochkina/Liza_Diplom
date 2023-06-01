using diplomliza1.Data.Entities;
using diplomliza1.Data;
using diplomliza1.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;
using diplomliza1.View;
using System.Windows.Input;
using diplomliza1.ViewModel;
using System.Windows;

namespace diplomliza1.ViewModels
{
    public class ApplicantViewModel : ViewModelBase
    {

        public ApplicantViewModel(ApplicationDbContext ctx, User user, UserControl employePage)
        {

            _jobVacancyService = new(ctx);
            _staffService = new(ctx);
            _questionareService = new(ctx);
            _ctx = ctx;
            _applicant = user;
            AplicantPage = employePage;
           

            //OpenMainPage();
        }
        private ApplicationDbContext _ctx;
        private JobVacancyService _jobVacancyService;
        private StaffService _staffService;
        private QuestionareService _questionareService;
        private Questionnare Questionnare;
        //private CategoryService _categoryService;
        //private ServiceService _serviceService;
        //private ProductOrderService _productOrderService;
        //private ServiceOrderService _serviceOrderService;
        //private QuestionService _questionService;
        //private NewsService _newsService;
        //private ReviewService _reviewService;
        //private ClientService _clientService;
        private User _applicant;
        private UserControl _aplicantPage;
        public UserControl AplicantPage { get => _aplicantPage; set => Set(ref _aplicantPage, value, nameof(AplicantPage)); }
        private void OpenVacancyApplicantPage() => AplicantPage.Content = new VacancyApplicantPage(_ctx, _jobVacancyService, _applicant, _questionareService);
        private void OpenQuestionnareApplicantPage() => AplicantPage.Content = new QuestionnairePage(_ctx, Questionnare,_questionareService, _applicant);
        public ICommand JobVacancyPageButton => new Command(JopTilepage => OpenVacancyApplicantPage());
        public ICommand QuestionnarePageButton => new Command(Questionnare => OpenQuestionnareApplicantPage());
        public void ExitApplicantWindow()
        {
            new MainWindow().Show();
            var CurrentWindow = Application.Current.MainWindow;
            CurrentWindow.Close();
        }
    }
}
