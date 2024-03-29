using BusTicketApp.Data;
using BusTicketApp.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);

// Servisleri konteynere ekle.
var connectionString = builder.Configuration.GetConnectionString("DefaultConnection");
builder.Services.AddDbContext<ApplicationDbContext>(options =>
    options.UseSqlServer(connectionString));
builder.Services.AddDatabaseDeveloperPageExceptionFilter();

builder.Services.AddIdentity<User, IdentityRole>(options =>
{
    options.SignIn.RequireConfirmedAccount = false;
})
.AddEntityFrameworkStores<ApplicationDbContext>().AddDefaultUI().AddDefaultTokenProviders();




builder.Services.AddScoped<UserManager<User>>();

builder.Services.AddScoped<SignInManager<User>>();



builder.Services.AddControllersWithViews();

builder.Services.AddSession();
builder.Services.AddRazorPages();

var app = builder.Build();

// HTTP isteði iþleme hattýný yapýlandýr.
if (app.Environment.IsDevelopment())
{
    app.UseMigrationsEndPoint();
}
else
{
    app.UseExceptionHandler("/Home/Error");
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();

app.UseSession();

app.UseAuthentication();
app.UseAuthorization();

app.MapControllerRoute(
    name: "default",
    pattern: "{area=Welcome}/{controller=Welcome}/{action=Index}/{id?}");
app.MapRazorPages();

app.Run();
