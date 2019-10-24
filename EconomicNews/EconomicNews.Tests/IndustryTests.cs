using System.Threading.Tasks;
using EconomicNews.Models;
using Xunit;

namespace EconomicNews.Tests
{
    public class IndustryTests
    {
        [Theory]
        #region Params

        [InlineData("name1")]
        [InlineData("111")]
        [InlineData("n")]
        [InlineData("rewrew")]
        [InlineData("nasdfsdf")]
        [InlineData("name8")]
        [InlineData("name9")]
        [InlineData("weq;jkrjkwleqrjqlkrjlq;krj;qwlekj")]
        [InlineData("namekek")]
        [InlineData("name5")]
        [InlineData("name4")]
        [InlineData("name3")]
        [InlineData("")]

        #endregion
        public async Task Industry_ShouldCreateRecords(string name)
        {
            var type = new Industry {Name = name};

            await using var context = new NewsDbContext();

            var industry = await context.Industry.AddAsync(type);
            await context.SaveChangesAsync();

            Assert.True(industry.Entity.Id > 0);

            context.Industry.Remove(industry.Entity);
        }
    }
}