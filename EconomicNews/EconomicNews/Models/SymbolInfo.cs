using System.ComponentModel.DataAnnotations.Schema;

namespace EconomicNews.Models
{
    public class SymbolInfo
    {
        public int Id { get; set; }

        [Column("symbol_id")]
        public int SymbolId { get; set; }

        [Column("type_id")]
        public int TypeId { get; set; }

        [Column("exchange_id")]
        public int ExchangeId { get; set; }

        [Column("currency_id")]
        public int CurrencyId { get; set; }
        public Symbol Symbol { get; set; }
        public Currency Currency { get; set; }
        public SymbolType Type { get; set; }
        public Exchange Exchange { get; set; }
    }
}