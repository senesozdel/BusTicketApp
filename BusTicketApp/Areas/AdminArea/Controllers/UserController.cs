using BusTicketApp.Areas.CustomerArea.Controllers;
using BusTicketApp.Data;
using Microsoft.AspNetCore.Mvc;

namespace BusTicketApp.Areas.AdminArea.Controllers
{
    [Area("AdminArea")]
    public class UserController : Controller
    {
 

        ApplicationDbContext db;

        public UserController( ApplicationDbContext db)
        {
         
            this.db = db;
        }
        public IActionResult Index()
        {
            var users = db.Users.ToList();
            return View(users);
        }
    }
}
