using BusTicketApp.Models;

namespace BusTicketApp.Areas.AdminArea.Services.Interfaces
{
    public interface IUserService
    {
        public Task<bool> AddUserAsync(User user);
        public Task<List<User>> GetAllUserAsync();
        public Task<User> GetUserByIdAsync(int id);
        public Task<bool> UpdateUserAsync(User user);
        public Task<bool> DeleteUserAsync(int id);
    }
}
