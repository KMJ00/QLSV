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
    public class BaivietController : Controller
    {
        // GET: Baiviet
        private Model1 db = new Model1();

        // GET: BaiDangs
        public ActionResult Index()
        {
            var baiDang = db.BaiDang.Include(b => b.chudeviet).Include(b => b.ND).Include(b => b.Tacgia);
            return View(baiDang.ToList());

        }
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
    }
}