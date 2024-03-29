using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using BusTicketApp.Data;
using BusTicketApp.Models;

namespace BusTicketApp.Areas.AdminArea.Controllers
{
    [Area("AdminArea")]
    public class TripsController : Controller
    {
        private readonly ApplicationDbContext _context;

        public TripsController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: AdminArea/Trips
        public async Task<IActionResult> Index()
        {
            var applicationDbContext = _context.Trips.Include(t => t.Bus).Include(t => t.Rota);
            return View(await applicationDbContext.ToListAsync());
        }

        // GET: AdminArea/Trips/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.Trips == null)
            {
                return NotFound();
            }

            var trip = await _context.Trips
                .Include(t => t.Bus)
                .Include(t => t.Rota)
                .FirstOrDefaultAsync(m => m.TripId == id);
            if (trip == null)
            {
                return NotFound();
            }

            return View(trip);
        }

        // GET: AdminArea/Trips/Create
        public IActionResult Create()
        {
            ViewData["BusId"] = new SelectList(_context.Buses, "BusId", "BusId");
            ViewData["RotaId"] = new SelectList(_context.Rotas, "RotaId", "RotaId");
            return View();
        }

        // POST: AdminArea/Trips/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("TripId,BusId,RotaId,DepartureTime,ArrivalTime")] Trip trip)
        {
            if (ModelState.IsValid)
            {
                _context.Add(trip);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["BusId"] = new SelectList(_context.Buses, "BusId", "BusId", trip.BusId);
            ViewData["RotaId"] = new SelectList(_context.Rotas, "RotaId", "RotaId", trip.RotaId);
            return View(trip);
        }

        // GET: AdminArea/Trips/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.Trips == null)
            {
                return NotFound();
            }

            var trip = await _context.Trips.FindAsync(id);
            if (trip == null)
            {
                return NotFound();
            }
            ViewData["BusId"] = new SelectList(_context.Buses, "BusId", "BusId", trip.BusId);
            ViewData["RotaId"] = new SelectList(_context.Rotas, "RotaId", "RotaId", trip.RotaId);
            return View(trip);
        }

        // POST: AdminArea/Trips/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("TripId,BusId,RotaId,DepartureTime,ArrivalTime")] Trip trip)
        {
            if (id != trip.TripId)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(trip);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!TripExists(trip.TripId))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            ViewData["BusId"] = new SelectList(_context.Buses, "BusId", "BusId", trip.BusId);
            ViewData["RotaId"] = new SelectList(_context.Rotas, "RotaId", "RotaId", trip.RotaId);
            return View(trip);
        }

        // GET: AdminArea/Trips/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.Trips == null)
            {
                return NotFound();
            }

            var trip = await _context.Trips
                .Include(t => t.Bus)
                .Include(t => t.Rota)
                .FirstOrDefaultAsync(m => m.TripId == id);
            if (trip == null)
            {
                return NotFound();
            }

            return View(trip);
        }

        // POST: AdminArea/Trips/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.Trips == null)
            {
                return Problem("Entity set 'ApplicationDbContext.Trips'  is null.");
            }
            var trip = await _context.Trips.FindAsync(id);
            if (trip != null)
            {
                _context.Trips.Remove(trip);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool TripExists(int id)
        {
          return (_context.Trips?.Any(e => e.TripId == id)).GetValueOrDefault();
        }
    }
}
