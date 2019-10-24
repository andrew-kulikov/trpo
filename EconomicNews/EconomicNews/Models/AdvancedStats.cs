using System;

namespace EconomicNews.Models
{
    public class AdvancedStats
    {
        public int Id { get; set; }
        public int SymbolId { get; set; }
        public Symbol Symbol { get; set; }
        public int TotalCash { get; set; }
        public int GrossProfit { get; set; }
        public int TotalRevenue { get; set; }
        public DateTime Date { get; set; }
    }
}