using baitaplonchuyende.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace baitaplonchuyende.Controllers
{
    public class MenuController : Controller
    {
        private Model1 db = new Model1();

        // GET: Menu
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult CatalogryMenu()
        {
            var option = db.chudeviet.ToList();
            return PartialView(option);
        }
        [Route("Baidangtheocd/{Macd?}")]
        public ActionResult Baidangtheocd(int? Macd, string search)
        {
            var query = db.BaiDang.AsQueryable();

            // Lọc theo chủ đề nếu có
            if (Macd.HasValue)
            {
                query = query.Where(n => n.Macd == Macd.Value);
            }

            // Lọc theo từ khóa nếu có
            if (!string.IsNullOrEmpty(search))
            {
                query = query.Where(n => n.Tieude.Contains(search));
            }

            var results = query.ToList();
            return View(results);
        }
        public ActionResult CatalogryMenu111()
        {
            var option = db.chudeviet.ToList();
            return PartialView(option);
        }

    }
}