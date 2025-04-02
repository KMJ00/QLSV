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
    public class NDsController : Controller
    {
        private Model1 db = new Model1();

        // GET: NDs
        public ActionResult Index()
        {
            return View(db.ND.ToList());
        }

        // GET: NDs/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ND nD = db.ND.Find(id);
            if (nD == null)
            {
                return HttpNotFound();
            }
            return View(nD);
        }

        // GET: NDs/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: NDs/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateInput(false)]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Mand,Nd1")] ND nD)
        {
            if (ModelState.IsValid)
            {
                db.ND.Add(nD);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(nD);
        }

        // GET: NDs/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ND nD = db.ND.Find(id);
            if (nD == null)
            {
                return HttpNotFound();
            }
            return View(nD);
        }

        // POST: NDs/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Mand,Nd1")] ND nD)
        {
            if (ModelState.IsValid)
            {
                db.Entry(nD).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(nD);
        }

        // GET: NDs/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ND nD = db.ND.Find(id);
            if (nD == null)
            {
                return HttpNotFound();
            }
            return View(nD);
        }

        // POST: NDs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            ND nD = db.ND.Find(id);
            db.ND.Remove(nD);
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
