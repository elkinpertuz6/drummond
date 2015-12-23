using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.Http;
using System.Web.Http.Description;
using drummond;
using Entities.DTOs;
namespace DrummondPL.Controllers
{
    public class SedeController : ApiController
    {
        private ModeloContainer db = new ModeloContainer();

        // GET api/Sede
        public IQueryable<SedeDTO> GetSedeSet()
        {
            var sedes = from s in db.SedeSet
                        select new SedeDTO()
                        {
                            Cod = s.Cod,
                            nombre = s.nombre
                        };
            return sedes;
        }

        // GET api/Sede/5
        [ResponseType(typeof(Sede))]
        public async Task<IHttpActionResult> GetSede(int id)
        {
            Sede sede = await db.SedeSet.FindAsync(id);
            if (sede == null)
            {
                return NotFound();
            }

            return Ok(sede);
        }

        // PUT api/Sede/5
        public async Task<IHttpActionResult> PutSede(int id, Sede sede)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != sede.Cod)
            {
                return BadRequest();
            }

            db.Entry(sede).State = EntityState.Modified;

            try
            {
                await db.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!SedeExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return StatusCode(HttpStatusCode.NoContent);
        }

        // POST api/Sede
        [ResponseType(typeof(Sede))]
        public async Task<IHttpActionResult> PostSede(Sede sede)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.SedeSet.Add(sede);
            await db.SaveChangesAsync();

            return CreatedAtRoute("DefaultApi", new { id = sede.Cod }, sede);
        }

        // DELETE api/Sede/5
        [ResponseType(typeof(Sede))]
        public async Task<IHttpActionResult> DeleteSede(int id)
        {
            Sede sede = await db.SedeSet.FindAsync(id);
            if (sede == null)
            {
                return NotFound();
            }

            db.SedeSet.Remove(sede);
            await db.SaveChangesAsync();

            return Ok(sede);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool SedeExists(int id)
        {
            return db.SedeSet.Count(e => e.Cod == id) > 0;
        }
    }
}