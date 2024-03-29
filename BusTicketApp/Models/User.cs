using Microsoft.AspNetCore.Identity;

namespace BusTicketApp.Models
{
    public class User : IdentityUser 
    {

        public bool IsAdmin { get; set; }
    }
}
