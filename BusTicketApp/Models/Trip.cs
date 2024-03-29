namespace BusTicketApp.Models
{
    public class Trip
    {
        public int TripId { get; set; }
        public int BusId { get; set; }
        public int RotaId { get; set; }
        public DateTime DepartureTime { get; set; }
        public DateTime ArrivalTime { get; set; }

        // Foreign keys
        public Bus Bus { get; set; }
        public Rota Rota { get; set; }
    }
}
