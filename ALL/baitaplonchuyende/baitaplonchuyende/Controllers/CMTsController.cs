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
    public class CMTsController : Controller
    {
        private Model1 db = new Model1();

        // GET: CMTs
        public ActionResult Index()
        {
            var cMT = db.CMT.Include(c => c.AccUser).Include(c => c.BaiDang);
            return View(cMT.ToList());
        }

        // GET: CMTs/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CMT cMT = db.CMT.Find(id);
            if (cMT == null)
            {
                return HttpNotFound();
            }
            return View(cMT);
        }

        // GET: CMTs/Create
        public ActionResult Create()
        {
            ViewBag.ID = new SelectList(db.AccUser, "ID", "GT");
            ViewBag.Mabai = new SelectList(db.BaiDang, "Mabai", "Tieude");
            return View();
        }

        // POST: CMTs/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Macmt,CMT1,ID,Mabai,Ngaycmt")] CMT cMT)
        {
            if (ModelState.IsValid)
            {
                db.CMT.Add(cMT);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.ID = new SelectList(db.AccUser, "ID", "Name", cMT.ID);
            ViewBag.Mabai = new SelectList(db.BaiDang, "Mabai", "Tieude", cMT.Mabai);
            return View(cMT);
        }

        // GET: CMTs/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CMT cMT = db.CMT.Find(id);
            if (cMT == null)
            {
                return HttpNotFound();
            }
            ViewBag.ID = new SelectList(db.AccUser, "ID", "Name", cMT.ID);
            ViewBag.Mabai = new SelectList(db.BaiDang, "Mabai", "Tieude", cMT.Mabai);
            return View(cMT);
        }

        // POST: CMTs/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Macmt,CMT1,ID,Mabai,Ngaycmt")] CMT cMT)
        {
            if (ModelState.IsValid)
            {
                db.Entry(cMT).State = EntityState.Modified;

                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.ID = new SelectList(db.AccUser, "ID", "Name", cMT.ID);
            ViewBag.Mabai = new SelectList(db.BaiDang, "Mabai", "Tieude", cMT.Mabai);
            return View(cMT);
        }

        // GET: CMTs/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CMT cMT = db.CMT.Find(id);
            if (cMT == null)
            {
                return HttpNotFound();
            }
            return View(cMT);
        }

        // POST: CMTs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            CMT cMT = db.CMT.Find(id);
            db.CMT.Remove(cMT);
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
