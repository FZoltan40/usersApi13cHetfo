using Microsoft.EntityFrameworkCore;

namespace UsersApi.Models
{
    public class UserContext : DbContext
    {
        public UserContext() { }

        public UserContext(DbContextOptions options) : base(options)
        {
        }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                string conn = "server=localhost; database=Users; user=root; password=";

                optionsBuilder.UseMySQL(conn);
            }
        }

        DbSet<User> NewUsers { get; set; } = null!;
    }
}
