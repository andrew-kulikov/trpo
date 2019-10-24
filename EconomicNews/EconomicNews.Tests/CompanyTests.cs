using System.Threading.Tasks;
using EconomicNews.Models;
using Xunit;

namespace EconomicNews.Tests
{
    public class CompanyTests
    {

        [Fact]
        public void Company_ShouldBeCompany()
        {
            var company = new Company();

            Assert.IsType<Company>(company);
        }
    }
}