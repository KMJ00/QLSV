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
    public class BaiDangsController : Controller
    {
        private Model1 db = new Model1();

        // GET: BaiDangs
        public ActionResult Index()
        {
            var baiDang = db.BaiDang.Include(b => b.chudeviet).Include(b => b.ND).Include(b => b.Tacgia);
            return View(baiDang.ToList());
           
        }

        // GET: BaiDangs/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            BaiDang baiDang = db.BaiDang.Find(id);
            if (baiDang == null)
            {
                return HttpNotFound();
            }
            return View(baiDang);
        }

        // GET: BaiDangs/Create
        public ActionResult Create()
        {
            ViewBag.Macd = new SelectList(db.chudeviet, "Macd", "Tencd");
            ViewBag.Mand = new SelectList(db.ND, "Mand", "Mand");
            ViewBag.Matg = new SelectList(db.Tacgia, "Matg", "Tentg");
            return View();
        }

        // POST: BaiDangs/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Mabai,Matg,Macd,Tieude,Mota,Ngaycapnhat,Mand,Anh")] BaiDang baiDang)
        {
            if (ModelState.IsValid)
            {
                baiDang.Anh = "";
                var f = Request.Files["ImageFile"];
                if (f != null && f.ContentLength > 0)
                {
                    string FileName = System.IO.Path.GetFileName(f.FileName);
                    string uploadPath = Server.MapPath("~/Content/anh/" + FileName);

                    f.SaveAs(uploadPath);
                    baiDang.Anh = FileName;
                }
                db.BaiDang.Add(baiDang);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.Macd = new SelectList(db.chudeviet, "Macd", "Tencd", baiDang.Macd);
            ViewBag.Mand = new SelectList(db.ND, "Mand", "Mand", baiDang.Mand);
            ViewBag.Matg = new SelectList(db.Tacgia, "Matg", "Tentg", baiDang.Matg);
            return View(baiDang);
        }

        // GET: BaiDangs/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            BaiDang baiDang = db.BaiDang.Find(id);
            if (baiDang == null)
            {
                return HttpNotFound();
            }

            // Thêm dòng này để lấy danh sách nội dung
            ViewBag.NDList = db.ND.ToList(); // Thay đổi nếu cần để phù hợp với cách bạn truy vấn

            ViewBag.Macd = new SelectList(db.chudeviet, "Macd", "Tencd", baiDang.Macd);
            ViewBag.Matg = new SelectList(db.Tacgia, "Matg", "Tentg", baiDang.Matg);
            return View(baiDang);
        }

        // POST: BaiDangs/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Mabai,Matg,Macd,Tieude,Mota,Ngaycapnhat,Mand,Anh")] BaiDang baiDang)
        {
            if (ModelState.IsValid)
            {
                baiDang.Anh = "";
                var f = Request.Files["ImageFile"];
                if (f != null && f.ContentLength > 0)
                {
                    string FileName = System.IO.Path.GetFileName(f.FileName);
                    string uploadPath = Server.MapPath("~/Content/anh/" + FileName);

                    f.SaveAs(uploadPath);
                    baiDang.Anh = FileName;
                }

                db.Entry(baiDang).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.Macd = new SelectList(db.chudeviet, "Macd", "Tencd", baiDang.Macd);
            ViewBag.Mand = new SelectList(db.ND, "Mand", "Nd1", baiDang.Mand);
            ViewBag.Matg = new SelectList(db.Tacgia, "Matg", "Tentg", baiDang.Matg);
            return View(baiDang);
        }

        // GET: BaiDangs/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            BaiDang baiDang = db.BaiDang.Find(id);
            if (baiDang == null)
            {
                return HttpNotFound();
            }
            return View(baiDang);
        }

        // POST: BaiDangs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            BaiDang baiDang = db.BaiDang.Find(id);
            db.BaiDang.Remove(baiDang);
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
