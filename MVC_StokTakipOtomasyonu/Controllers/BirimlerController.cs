using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVC_StokTakipOtomasyonu.Models.Entity;
using MVC_StokTakipOtomasyonu.MyModel;

namespace MVC_StokTakipOtomasyonu.Controllers
{
    [Authorize(Roles = "A,U")]
    public class BirimlerController : Controller
    {
        MVC_StokTakipEntities db = new MVC_StokTakipEntities();

        public ActionResult Index()
        {
            Birimler b = new Birimler();
            return View(db.Birimler.ToList());
        }
        [HttpGet]

        public ActionResult Ekle()
        {

            return View("Kaydet");
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Kaydet(Birimler p)
        {
            if (p.ID == 0)
            {
                if (p.Birim==null || p.Aciklama==null)
                {
                    return View();
                }
                db.Entry(p).State = System.Data.Entity.EntityState.Added;
            }
            else if (p.ID > 0)
            {
                if (p.Birim == null || p.Aciklama == null)
                {
                    return View();
                }
                db.Entry(p).State = System.Data.Entity.EntityState.Modified;
            }
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult GuncelleBilgiGetir(int? id)
        {
            var model = db.Birimler.Find(id);
            MyBirimler b = new MyBirimler();
            b.ID = model.ID;
            b.Birim = model.Birim;
            b.Aciklama = model.Aciklama;
            if (model == null) return HttpNotFound();
            return View("Kaydet", b);
        }
        public ActionResult SilBilgiGetir(Birimler p)
        {
            var model = db.Birimler.Find(p.ID);
            if (model == null) return HttpNotFound();
            return View(model);
        }
        public ActionResult Sil(Birimler p)
        {
            db.Entry(p).State = System.Data.Entity.EntityState.Deleted;
            db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}