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
    public class AccUsersController : Controller
    {
        private Model1 db = new Model1();

        // GET: AccUsers
        public ActionResult Index()
        {
            var accUser = db.AccUser.Include(a => a.CV).Include(a => a.TAG);
            return View(accUser.ToList());
        }

        // GET: AccUsers/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            AccUser accUser = db.AccUser.Find(id);
            if (accUser == null)
            {
                return HttpNotFound();
            }
            return View(accUser);
        }

        // GET: AccUsers/Create
        public ActionResult Create()
        {
            ViewBag.Macv = new SelectList(db.CV, "Macv", "CV1");
            ViewBag.MaTag = new SelectList(db.TAG, "MaTag", "Tag1");
            return View();
        }

        // POST: AccUsers/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,Macv,MaTag,GT,SDT,Name,Pass,Anh")] AccUser accUser)
        {
            if (ModelState.IsValid)
            {

                accUser.Anh = "";
                var f = Request.Files["ImageFile"];
                if (f != null && f.ContentLength > 0)
                {
                    string FileName = System.IO.Path.GetFileName(f.FileName);
                    string uploadPath = Server.MapPath("~/Content/anh/" + FileName);

                    f.SaveAs(uploadPath);
                    accUser.Anh = FileName;
                }
                db.AccUser.Add(accUser);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.Macv = new SelectList(db.CV, "Macv", "CV1", accUser.Macv);
            ViewBag.MaTag = new SelectList(db.TAG, "MaTag", "Tag1", accUser.MaTag);
            return View(accUser);
        }

        // GET: AccUsers/Edit/5
        public ActionResult Edit(int? id)
        {

            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            AccUser accUser = db.AccUser.Find(id);
            if (accUser == null)
            {
                return HttpNotFound();
            }
            ViewBag.Macv = new SelectList(db.CV, "Macv", "CV1", accUser.Macv);
            ViewBag.MaTag = new SelectList(db.TAG, "MaTag", "Tag1", accUser.MaTag);
            return View(accUser);
        }

        // POST: AccUsers/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,Macv,MaTag,GT,SDT,Name,Pass,Anh")] AccUser accUser)
        {
            if (ModelState.IsValid)
            {
                accUser.Anh = "";
                var f = Request.Files["ImageFile"];
                if (f != null && f.ContentLength > 0)
                {
                    string FileName = System.IO.Path.GetFileName(f.FileName);
                    string uploadPath = Server.MapPath("~/Content/anh/" + FileName);

                    f.SaveAs(uploadPath);
                    accUser.Anh = FileName;
                }
                db.Entry(accUser).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.Macv = new SelectList(db.CV, "Macv", "CV1", accUser.Macv);
            ViewBag.MaTag = new SelectList(db.TAG, "MaTag", "Tag1", accUser.MaTag);
            return View(accUser);
        }

        // GET: AccUsers/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            AccUser accUser = db.AccUser.Find(id);
            if (accUser == null)
            {
                return HttpNotFound();
            }
            return View(accUser);
        }

        // POST: AccUsers/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            AccUser accUser = db.AccUser.Find(id);
            db.AccUser.Remove(accUser);
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
