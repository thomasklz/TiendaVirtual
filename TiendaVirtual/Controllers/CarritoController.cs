using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Data.Entity;
using System.Web;
using System.Web.Mvc;
using TiendaVirtual.Models;

namespace TiendaVirtual.Controllers
    {
    public class CarritoController : Controller
        {
        private bdCarritoComprasEntities db = new bdCarritoComprasEntities ();


        // GET: /Carrito/  ViewBag.ReturnUrl = Url.Action ("Manage");

        public ActionResult Index ()
            {

            return View (db.Productoes.ToList ());

            }


        // GET: /Carrito/listado/

        public ActionResult listaCarrito (CarritoCompra cc)
            {
            return View (cc);

            }


        // GET: /Carrito/add/5
        public ActionResult AddProductCart (CarritoCompra cc, int id)
            {

            Producto p = db.Productoes.Find (id);
            if (p.Cantidad==0){
           
                return RedirectToAction ("Error");
                
                }
            //Añadimos el producto al carrito
            Producto producto_encontrado = cc.FirstOrDefault (x => x.Id == id);
            if (producto_encontrado != null)
                {
                producto_encontrado.Cantidad++;
                }
            else
                {
                p.Cantidad = 1;
                cc.Add (p);
                }

            return RedirectToAction ("listaCarrito", "Carrito");
            }


        // GET: /Carrito/delete/5
        public ActionResult DeleteProductCart (CarritoCompra cc, int id)
            {
            //Buscamos el producto
            Producto p = cc.FirstOrDefault (x => x.Id == id);
            //Eliminamos el producto del carrito
            if (p.Cantidad != 1)
                {
                p.Cantidad--;
                }
            else
                {
                cc.Remove (p);
                }
            //Redirigimos a la vista
            return RedirectToAction ("listaCarrito", "Carrito");
            }


        // GET: /Carrito/savepedido/5
        public ActionResult savepedido (CarritoCompra cc, float total)
            {

            
            int posicion = 0;
            foreach (Producto producto in cc)
                {
                Producto producto_bd = db.Productoes.Find (producto.Id);
               
                if (producto_bd.Cantidad >= 1)
                    {
                    
                    Pedido pedido = new Pedido ();
                    pedido.Producto = producto_bd ;
                    pedido.Total = total;
                    pedido.Usuario = User.Identity.Name;
                    db.Pedidoes.Add (pedido);
                    producto_bd.Cantidad = producto_bd.Cantidad - producto.Cantidad;
                    db.SaveChanges ();
                    posicion++;

                    }
               
                }

             posicion--;
            for (int i = 0; i <= posicion; i++) {
                
                    cc.RemoveAt(0);
                }
         
            return RedirectToAction ("Index", "Carrito");
            }

        public ActionResult Error ()
            {
            return View ();
            }


        }
    }
