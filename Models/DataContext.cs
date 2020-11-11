using Microsoft.EntityFrameworkCore;

namespace netCoreExample.Models
{
 public class DataContext : DbContext
    {
        public DbSet<Tutorial> Tutorials { get; set; }
        
        public DataContext(DbContextOptions<DataContext> options) 
            : base(options) { }
    }
}