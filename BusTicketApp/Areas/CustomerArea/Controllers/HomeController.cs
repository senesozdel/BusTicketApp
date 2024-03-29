using BusTicketApp.Data;
using BusTicketApp.Models;
using BusTicketApp.Models.ViewModels;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using System.Diagnostics;

namespace BusTicketApp.Areas.CustomerArea.Controllers
{
    [Area("CustomerArea")]
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        ApplicationDbContext db;

        public HomeController(ILogger<HomeController> logger, ApplicationDbContext db)
        {
            _logger = logger;
            this.db = db;
        }

        public IActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public IActionResult Index(string from, string to, DateTime date)
        {

            var bulunanrota = db.Rotas.Where(x => x.DepartureCity == from && x.ArrivalCity == to).FirstOrDefault();

     

            var travelgun = date.Day;
            var travelay = date.Month;
            var travelyil = date.Year;

            var totaltrips = db.Trips.ToList();

            var bulunantrips = db.Trips.Where(x => x.RotaId == bulunanrota.RotaId && x.DepartureTime.Day == travelgun && x.DepartureTime.Month == travelay && x.DepartureTime.Year == travelyil).ToList();


            if (bulunantrips.Any())
            {
                TempData["bulunantrips"] = JsonConvert.SerializeObject(bulunantrips); ;
                return RedirectToAction("FoundedTrips", "Home");
            }
            else
            {
                return RedirectToAction("Index", "Home");
            }

        }


        public IActionResult FoundedTrips()
        {
            string myListJson = TempData["bulunantrips"] as string;

            if (!string.IsNullOrEmpty(myListJson))
            {
                List<Trip> myList = JsonConvert.DeserializeObject<List<Trip>>(myListJson);

                // myList artık bir List<MyModel> nesnesidir.

                return View(myList);
            }

            return RedirectToAction("Index", "Home");

        }

        [HttpPost]

        public IActionResult FoundedTrips(Trip fromviewmodel)
        {
            List<Trip> trips = new List<Trip>();

            trips.Add(fromviewmodel);

            TempData["fromviewmodel"] = JsonConvert.SerializeObject(trips); ;
            return RedirectToAction("Index", "BuyTicket");

        }



        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
