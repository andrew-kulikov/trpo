using System;
using System.Linq;

namespace EconomicNews.App
{
    public class Program
    {
        public static void Main(string[] args)
        {
            using var context = new NewsDbContext();
            var symbolTypes = context.SymbolType.ToList();
            foreach (var symbolType in symbolTypes)
            {
                Console.WriteLine(symbolType.Name);
            }
        }
    }
}
