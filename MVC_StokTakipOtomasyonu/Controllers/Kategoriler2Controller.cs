using MVC_StokTakipOtomasyonu.Models.Entity;
using MVC_StokTakipOtomasyonu.MyModel;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVC_StokTakipOtomasyonu.Controllers
{
    [Authorize(Roles = "A,U")]

    public class Kategoriler2Controller : Controller
    {
        // GET: Kategoriler2
        MVC_StokTakipEntities db = new MVC_StokTakipEntities();
        public ActionResult Index()
        {
            return View();
        }

        public JsonResult GetKategoriList()
        {
            List<MyKategoriler> liste = db.Kategoriler.Select(x => new MyKategoriler
            {
                ID=x.ID,
                Kategori=x.Kategori,
                Aciklama=x.Aciklama
            }).ToList();
            return Json(liste,JsonRequestBehavior.AllowGet);
        }


        [HttpPost, ValidateAntiForgeryToken]
        public ActionResult Ekle(Kategoriler p)
        {
            db.Entry(p).State = System.Data.Entity.EntityState.Added;
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Guncelle(Kategoriler p)
        {
            db.Entry(p).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        [HttpPost]
        public ActionResult Sil(Kategoriler p)
        {
            
            db.Entry(p).State = System.Data.Entity.EntityState.Deleted;
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        public JsonResult GetEditDeleteCategory(int ID)
        {
            var model = db.Kategoriler.FirstOrDefault(x=>x.ID==ID);
            string value = "";
            value = JsonConvert.SerializeObject(model, Formatting.Indented, new JsonSerializerSettings
            {
                ReferenceLoopHandling=ReferenceLoopHandling.Ignore
            });
            return Json(value, JsonRequestBehavior.AllowGet);
        }
    }
}