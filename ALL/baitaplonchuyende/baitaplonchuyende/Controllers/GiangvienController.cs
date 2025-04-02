using baitaplonchuyende.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;

namespace baitaplonchuyende.Controllers
{
    public class GiangvienController : Controller
    {
        // GET: Giangvien
        Model1 db = new Model1();
       
        public ActionResult Index()
        {
            var sv = db.AccUser
                        .Where(user => user.Macv == 2) // Lọc theo Macv
                        .ToList();

            return View(sv);
        }
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            AccUser acc = db.AccUser.Find(id);
            if (acc == null)
            {
                return HttpNotFound();
            }
            return View(acc);
        }
    }
}