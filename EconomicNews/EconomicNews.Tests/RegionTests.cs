using System.Threading.Tasks;
using EconomicNews.Models;
using Xunit;

namespace EconomicNews.Tests
{
    public class RegionTests
    {
        [Fact]
        public async Task Region_ShouldBeAdded()
        {
            var region = new Region {Name = "Belarus"};

            await using var context = new NewsDbContext();

            var regionEntry = await context.Region.AddAsync(region);
            await context.SaveChangesAsync();

            Assert.True(regionEntry.Entity.Id > 0);
        }
    }
}