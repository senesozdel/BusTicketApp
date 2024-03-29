using BusTicketApp.Data;
using BusTicketApp.Models;
using BusTicketApp.Models.ViewModels;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.CodeAnalysis;
using Newtonsoft.Json;
using System.Security.Claims;
using Iyzipay;
using Iyzipay.Model;
using Iyzipay.Request;
using Microsoft.AspNetCore.Http;

namespace BusTicketApp.Areas.CustomerArea.Controllers
{
    [Area("CustomerArea")]
    public class BuyTicketController : Controller
    {
        ApplicationDbContext db;
        private readonly UserManager<User> _userManager;
        public BuyTicketController(ApplicationDbContext db, UserManager<User> userManager )
        {
            this.db = db;
            _userManager = userManager;
        }

        public IActionResult Index()
        {
            
            var buses = db.Buses.ToList();
            var tickets = db.Tickets.ToList();
            var tumseferler = db.Trips.ToList();
            string myListJson = TempData["fromviewmodel"] as string;

            var userId = _userManager.GetUserId(User);

            var girisyapankullanici = db.Users.FirstOrDefault(x => x.Id == userId);

            if (!string.IsNullOrEmpty(myListJson))
            {
                List<Trip> myList = JsonConvert.DeserializeObject<List<Trip>>(myListJson);

                var gelenviewmodel = myList.FirstOrDefault();
                
                var price = tickets.Where(x=>x.TripId == gelenviewmodel.TripId).FirstOrDefault().Price;
                var koltuksayisi = buses.Where(x=>x.BusId == gelenviewmodel.BusId).FirstOrDefault().Capacity;
                var kalkiszamani = tumseferler.Where(x => x.DepartureTime == gelenviewmodel.DepartureTime).FirstOrDefault().DepartureTime;
                var secilenseferinbiletleri = tickets.Where(x => x.TripId == gelenviewmodel.TripId).ToList();
                var secilenseferindolukoltukları = secilenseferinbiletleri.Where(x => x.IsEmpty == true).ToList();

                DoluKoltuklar dolukoltuknumaraları = new DoluKoltuklar();

                foreach (var item in secilenseferindolukoltukları)
                {
       
                    dolukoltuknumaraları.SeatNumberList.Add(item.SeatNumber);
                }
                for(var i = 0; i < 40; i++)
                {
                    dolukoltuknumaraları.SeatNumberList.Add(100 + i);
                }

                var seatbuymodellist = new List<SeatBuyModel>();

                for (int i = 1; i <= koltuksayisi; i++)
                {
                    seatbuymodellist.Add(new SeatBuyModel { SeatNumber = i, Price = price ,DeperatureTime = kalkiszamani });
                }

                ViewData["dolukoltuknumaraları"] = dolukoltuknumaraları;
                ViewData["secilensefernumarası"] = Convert.ToString(tumseferler.Where(x => x.TripId == gelenviewmodel.TripId).FirstOrDefault().TripId);
                if (girisyapankullanici != null)
                {
                    ViewData["girisyapan"] = girisyapankullanici.Id;
                }

                return View(seatbuymodellist);
            }
          
            return View();
        }
        [HttpPost]
        public IActionResult Index(string koltuknumber,string secilensefernumber,string totalamount)
        {
         
            HttpContext.Session.SetString("koltuknumber", koltuknumber);
            HttpContext.Session.SetString("secilensefernumber", secilensefernumber);
            HttpContext.Session.SetString("totalamount", totalamount);


            return RedirectToAction("Order","BuyTicket");
        }
        public IActionResult Order()
        {
            string gelenkoltuknumberasstring = HttpContext.Session.GetString("koltuknumber");
            string secilensefernumber = HttpContext.Session.GetString("secilensefernumber");
            string totalamount = HttpContext.Session.GetString("totalamount");

            HttpContext.Session.SetString("koltuknumber", gelenkoltuknumberasstring);
            HttpContext.Session.SetString("secilensefernumber", secilensefernumber);
            HttpContext.Session.SetString("totalamount", totalamount);

            string[] koltuknumberarray = gelenkoltuknumberasstring.Split(',');


            List<int> alinankoltuklar = new List<int>();


            foreach (var item in koltuknumberarray)
            {
                alinankoltuklar.Add(Convert.ToInt32(item));
            }




            int secilensefer = db.Trips.Where(x => x.TripId == Convert.ToInt32(secilensefernumber)).FirstOrDefault().TripId;

            var userId = _userManager.GetUserId(User);

            var girisyapankullanici = db.Users.FirstOrDefault(x => x.Id == userId);



            List<Ticket> guncellenecekTickets = new List<Ticket>();

            foreach (var koltuk in alinankoltuklar)
            {
                var bulunanticket = db.Tickets.Where(x => x.SeatNumber == koltuk && x.TripId == secilensefer).FirstOrDefault();

                guncellenecekTickets.Add(bulunanticket);

            }
            foreach (var item in guncellenecekTickets)
            {
                //item.KullaniciId = girisyapankullanici.KullaniciId;
                item.IsEmpty = true;
                db.SaveChanges();
            }



            Options options = new Options(); // Iyzico Import
            options.ApiKey = "sandbox-upe9mLuSZxasLf7Epi475GdsoNTxp8QZ";
            options.SecretKey = "sandbox-miDMYJ40cOCMSVaWXyVU9T82skc4V8S8";
            options.BaseUrl = "Https://sandbox-api.iyzipay.com";


            CreateCheckoutFormInitializeRequest request = new CreateCheckoutFormInitializeRequest();
            request.Locale = Locale.TR.ToString();
            request.ConversationId = "123456789";
            request.Price = totalamount;
            request.PaidPrice = totalamount;
            request.Currency = Currency.TRY.ToString();
            request.BasketId = "B67832";
            request.PaymentGroup = PaymentGroup.PRODUCT.ToString();
            request.CallbackUrl = "https://localhost:7286/CustomerArea/BuyTicket/Success";

            

            Buyer buyer = new Buyer();
            buyer.Id = girisyapankullanici.Id;
            buyer.Name = girisyapankullanici.UserName;
            buyer.Surname = girisyapankullanici.UserName;
            buyer.GsmNumber = "+905554443322";
            buyer.Email = girisyapankullanici.Email;
            buyer.IdentityNumber = "74300864791";
            buyer.LastLoginDate = "2015-10-05 12:43:35";
            buyer.RegistrationDate = "2000-12-12 12:00:00";
            buyer.RegistrationAddress = "Teknopark IStanbul";
            buyer.Ip = "85.34.78.112";
            buyer.City = "Istanbul";
            buyer.Country = "Turkey";
            buyer.ZipCode = "34732";
            request.Buyer = buyer;

            Address shippingAddress = new Address();
            shippingAddress.ContactName = girisyapankullanici.UserName;
            shippingAddress.City = "Istanbul";
            shippingAddress.Country = "Turkey";
            shippingAddress.Description = "Architecht karşısı";
            shippingAddress.ZipCode = "34742";
            request.ShippingAddress = shippingAddress;

            Address billingAddress = new Address();
            billingAddress.ContactName = girisyapankullanici.UserName;
            billingAddress.City = "Istanbul";
            billingAddress.Country = "Turkey";
            billingAddress.Description = "Architecht";
            billingAddress.ZipCode = "34742";
            request.BillingAddress = billingAddress;

            List<BasketItem> basketItems = new List<BasketItem>();
            BasketItem basketProduct;
            basketProduct = new BasketItem();
            basketProduct.Id = "1";
            basketProduct.Name = "Bus Seat";
            basketProduct.Category1 = "Bus Seat";
            basketProduct.Category2 = "";
            basketProduct.ItemType = BasketItemType.PHYSICAL.ToString();
            double price = Convert.ToDouble(totalamount);
            double endPrice = Convert.ToDouble(totalamount);
            basketProduct.Price = endPrice.ToString().Replace(",", "");
            basketItems.Add(basketProduct);

            request.BasketItems = basketItems;
            CheckoutFormInitialize checkoutFormInitialize = CheckoutFormInitialize.Create(request, options);
            ViewBag.pay = checkoutFormInitialize.CheckoutFormContent;
            return View();
        }

        public IActionResult Success() {




            return View(); }
    }
}
