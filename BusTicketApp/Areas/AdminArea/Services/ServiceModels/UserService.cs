using BusTicketApp.Areas.AdminArea.Services.Interfaces;
using BusTicketApp.Data;
using BusTicketApp.Models;

namespace BusTicketApp.Areas.AdminArea.Services.ServiceModels
{
    public class UserService : IUserService
    {
        private readonly ApplicationDbContext db;
        public UserService(ApplicationDbContext db)
        {
            this.db = db;
        }
        public Task<bool> AddUserAsync(User user)
        {
            throw new NotImplementedException();
        }

        public Task<bool> DeleteUserAsync(int id)
        {
            throw new NotImplementedException();
        }

        public Task<List<User>> GetAllUserAsync()
        {
            var users = db.Users.ToList();
            return Task.FromResult(users);
        }

        public Task<User> GetUserByIdAsync(int id)
        {
            throw new NotImplementedException();
        }

        public Task<bool> UpdateUserAsync(User user)
        {
            throw new NotImplementedException();
        }
    }
}
