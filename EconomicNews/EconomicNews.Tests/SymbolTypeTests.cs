using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EconomicNews.Models;
using Xunit;

namespace EconomicNews.Tests
{
    public class SymbolTypeTests
    {
        [Fact]
        public async Task SymbolType_ShouldBeAdded()
        {
            var type = new SymbolType { Name = "tmp" };

            await using var context = new NewsDbContext();

            var symbolType = await context.SymbolType.AddAsync(type);
            await context.SaveChangesAsync();

            Assert.True(symbolType.Entity.Id > 0);
        }

        [Fact]
        public async Task SymbolType_ShouldBeDeleted()
        {
            await using var context = new NewsDbContext();

            var toDelete = context.SymbolType.SingleOrDefault(st => st.Name == "tmp");

            if (toDelete == null) return;

            context.SymbolType.Remove(toDelete);
            await context.SaveChangesAsync();
        }
    }
}
