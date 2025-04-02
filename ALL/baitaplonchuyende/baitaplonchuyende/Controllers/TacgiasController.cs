using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using baitaplonchuyende.Models;

namespace baitaplonchuyende.Controllers
{
    public class TacgiasController : Controller
    {
        private Model1 db = new Model1();

        // GET: Tacgias
        public ActionResult Index()
        {
            return View(db.Tacgia.ToList());
        }

        // GET: Tacgias/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Tacgia tacgia = db.Tacgia.Find(id);
            if (tacgia == null)
            {
                return HttpNotFound();
            }
            return View(tacgia);
        }

        // GET: Tacgias/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Tacgias/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Matg,Tentg")] Tacgia tacgia)
        {
            if (ModelState.IsValid)
            {
                db.Tacgia.Add(tacgia);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tacgia);
        }

        // GET: Tacgias/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Tacgia tacgia = db.Tacgia.Find(id);
            if (tacgia == null)
            {
                return HttpNotFound();
            }
            return View(tacgia);
        }

        // POST: Tacgias/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Matg,Tentg")] Tacgia tacgia)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tacgia).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tacgia);
        }

        // GET: Tacgias/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Tacgia tacgia = db.Tacgia.Find(id);
            if (tacgia == null)
            {
                return HttpNotFound();
            }
            return View(tacgia);
        }

        // POST: Tacgias/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Tacgia tacgia = db.Tacgia.Find(id);
            db.Tacgia.Remove(tacgia);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
