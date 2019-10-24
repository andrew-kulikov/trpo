namespace EconomicNews.Models
{
    public class CompanyInfo
    {
        public int Id { get; set; }
        public string Website { get; set; }
        public string Description { get; set; }
        public int Employees { get; set; }
        public string Address { get; set; }
        public int CompanyId { get; set; }
        public int IndustryId { get; set; }
        public int CeoId { get; set; }
        public Company Company { get; set; }
        public Industry Industry { get; set; }
        public CompanyCEO Ceo { get; set; }
    }
}