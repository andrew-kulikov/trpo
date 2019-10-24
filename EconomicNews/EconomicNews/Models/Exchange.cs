namespace EconomicNews.Models
{
    public class Exchange
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public int RegionId { get; set; }
        public Region Region { get; set; }
    }
}