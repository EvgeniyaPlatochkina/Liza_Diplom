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
    public class QuestionnarieApplicantPageViewModel : ViewModelBase
    {
        public QuestionnarieApplicantPageViewModel(ApplicationDbContext ctx, QuestionareService questionareService, Questionnare questionnaire)
        {
            _questionareService = questionareService;
            _ctx = ctx;
            _questionnare = questionnaire;
            _vacancyService = new(ctx);
            ProductFilthersTtile = new List<string> { "Не выбрана" };
            ProductFilthersTtile.AddRange(_vacancyService.GetJobTitle().Select(c => c.Title).ToList());
            SelectedProductFiltherTitle = ProductFilthersTtile[0];
            UpdateLists();
        }
        private ApplicationDbContext _ctx;
        private QuestionareService _questionareService;
        private JobVacancyService _vacancyService;
        private Questionnare _questionnare;
        private List<Questionnare> _questionnares;
        private string _selectedProductFiltherTitle;
        public List<string> ProductFilthersTtile { get; set; } = null!;
        public string SelectedProductFiltherTitle
        {
            get => _selectedProductFiltherTitle; set
            {
                if (Set(ref _selectedProductFiltherTitle, value, nameof(SelectedProductFiltherTitle)))
                    UpdateLists();
            }
        }
        private List<Questionnare> FiltherProductsTitle(List<Questionnare> productOrders)
        {
            if (!(SelectedProductFiltherTitle == ProductFilthersTtile[0]))
                return productOrders.Where(p => p.JobVacancy.Title == SelectedProductFiltherTitle).ToList();
            else
                return productOrders;
        }
        public List<Questionnare> Questionnares { get => _questionnares; set => Set(ref _questionnares, value, nameof(Questionnares)); }
        private Questionnare _selectedQuestionnares;
        public Questionnare SelectedQuestionnares { get => _selectedQuestionnares; set => Set(ref _selectedQuestionnares, value, nameof(Questionnares)); }
        private ICollection<Questionnare> GetQuestionnare() => FiltherProductsTitle(_questionareService.GetQuestionnare().ToList());
        private bool SelectedJobTitleIsNull() => SelectedQuestionnares == null;
        public ICommand QuestionnarieApplicantPageButton => new Command(staffpage => OpenInfomationApplicantWindow());
        private void UpdateLists()
        {
            Questionnares = new List<Questionnare>(GetQuestionnare());

        }
        private void OpenInfomationApplicantWindow()
        {
            if (!SelectedJobTitleIsNull())
            {
                new InformationApplicantWindow(_ctx, SelectedQuestionnares).ShowDialog();
                UpdateLists();
            }
            else
                MessageBox.Show("Выберите", "Внимание!", MessageBoxButton.OK, MessageBoxImage.Information);
        }

    }
}
