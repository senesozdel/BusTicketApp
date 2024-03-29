namespace BusTicketApp.Models
{
    public class Ticket
    {
        public int TicketId { get; set; }
        public int TripId { get; set; }
        public Trip Trip { get; set; }
        public string ?UserId { get; set; }
        public User User { get; set; }
        public int SeatNumber { get; set; }
        public decimal Price { get; set; }
        public bool IsEmpty { get; set; }
        public DateTime PurchaseTime { get; set; }

     


    }
}
