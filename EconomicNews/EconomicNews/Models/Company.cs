namespace EconomicNews.Models
{
    public class Company
    {
        public int Id { get; set; }
        public int SymbolId { get; set; }
        public int ExchangeId { get; set; }
        public Symbol Symbol { get; set; }
        public Exchange Exchange { get; set; }
    }
}