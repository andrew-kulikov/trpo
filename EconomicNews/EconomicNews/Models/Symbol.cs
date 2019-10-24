using System;

namespace EconomicNews.Models
{
    public class Symbol
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public DateTime Date { get; set; }
        public bool Enabled { get; set; }
    }
}
