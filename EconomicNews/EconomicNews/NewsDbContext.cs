using EconomicNews.Models;
using Microsoft.EntityFrameworkCore;

namespace EconomicNews
{
    public class NewsDbContext : DbContext
    {
        public DbSet<Company> Company { get; set; }
        public DbSet<AdvancedStats> AdvancedStats { get; set; }
        public DbSet<CompanyCEO> CompanyCEO { get; set; }
        public DbSet<CompanyInfo> CompanyInfo { get; set; }
        public DbSet<Currency> Currency { get; set; }
        public DbSet<Exchange> Exchange { get; set; }
        public DbSet<Industry> Industry { get; set; }
        public DbSet<Region> Region { get; set; }
        public DbSet<Symbol> Symbol { get; set; }
        public DbSet<SymbolInfo> SymbolInfo { get; set; }
        public DbSet<SymbolType> SymbolType { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(@"Server=.;Database=EconomicNews;Trusted_Connection=True;");
        }
    }
}