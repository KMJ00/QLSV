using baitaplonchuyende.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace baitaplonchuyende.Controllers
{
    public class loginController : Controller
    {
        private Model1 db = new Model1();
        // GET: login
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Login(string tendn, string matkhau)
        {
            if (string.IsNullOrWhiteSpace(tendn) || string.IsNullOrWhiteSpace(matkhau))
            {
                ViewBag.ErrLogin = "Tên đăng nhập và mật khẩu không được để trống.";
                return View();
            }

            var taikhoan = db.AccUser.FirstOrDefault(n => n.Name == tendn && n.Pass == matkhau);

            if (taikhoan == null)
            {
                ViewBag.ErrLogin = "Tên đăng nhập hoặc mật khẩu không chính xác.";
                return View();
            }

            
            Session["taikhoan"] = taikhoan; 

            return RedirectToAction("Index", "BaiDangs");
        }
    }
}
