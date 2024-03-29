using BusTicketApp.Models;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace BusTicketApp.Data
{
    public class ApplicationDbContext : IdentityDbContext<User>
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }
        public DbSet<Bus> Buses { get; set; }
        public DbSet<Rota> Rotas { get; set; }
        public DbSet<Trip> Trips { get; set; }

        public DbSet<Ticket> Tickets { get; set; }

    }
}
