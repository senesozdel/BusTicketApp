using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using BusTicketApp.Data;
using BusTicketApp.Models;
using Microsoft.AspNetCore.Authorization;


namespace BusTicketApp.Areas.AdminArea.Controllers
{

    [Area("AdminArea")]
    [Authorize]
    public class BusesController : Controller
    {
        private readonly ApplicationDbContext _context;

        public BusesController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: AdminArea/Buses
        public async Task<IActionResult> Index()
        {
              return _context.Buses != null ? 
                          View(await _context.Buses.ToListAsync()) :
                          Problem("Entity set 'ApplicationDbContext.Buses'  is null.");
        }

        // GET: AdminArea/Buses/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.Buses == null)
            {
                return NotFound();
            }

            var bus = await _context.Buses
                .FirstOrDefaultAsync(m => m.BusId == id);
            if (bus == null)
            {
                return NotFound();
            }

            return View(bus);
        }

        // GET: AdminArea/Buses/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: AdminArea/Buses/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("BusId,BusNumber,Capacity")] Bus bus)
        {
            if (ModelState.IsValid)
            {
                _context.Add(bus);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(bus);
        }

        // GET: AdminArea/Buses/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.Buses == null)
            {
                return NotFound();
            }

            var bus = await _context.Buses.FindAsync(id);
            if (bus == null)
            {
                return NotFound();
            }
            return View(bus);
        }

        // POST: AdminArea/Buses/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("BusId,BusNumber,Capacity")] Bus bus)
        {
            if (id != bus.BusId)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(bus);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!BusExists(bus.BusId))
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
            return View(bus);
        }

        // GET: AdminArea/Buses/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.Buses == null)
            {
                return NotFound();
            }

            var bus = await _context.Buses
                .FirstOrDefaultAsync(m => m.BusId == id);
            if (bus == null)
            {
                return NotFound();
            }

            return View(bus);
        }

        // POST: AdminArea/Buses/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.Buses == null)
            {
                return Problem("Entity set 'ApplicationDbContext.Buses'  is null.");
            }
            var bus = await _context.Buses.FindAsync(id);
            if (bus != null)
            {
                _context.Buses.Remove(bus);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool BusExists(int id)
        {
          return (_context.Buses?.Any(e => e.BusId == id)).GetValueOrDefault();
        }
    }
}
