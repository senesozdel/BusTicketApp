using BusTicketApp.Data;
using BusTicketApp.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;

namespace BusTicketApp.Areas.Welcome.Controllers
{
    [Area("Welcome")]
    public class WelcomeController : Controller
    {
        private readonly UserManager<User> _userManager;
        ApplicationDbContext db;

        public WelcomeController(ApplicationDbContext db, UserManager<User> userManager)
        {
            this.db = db;
            _userManager = userManager;
        }
        public IActionResult Index()
        {

            var userId = _userManager.GetUserId(User);

            return View();
        }
    }
}
