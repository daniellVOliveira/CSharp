using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Aula1608_EFDatabaseFirst.Controllers
{
    class ProductController
    {
        AdventureWorks2016Entities contexto = new AdventureWorks2016Entities();

        void Inserir (Product p)
        {
            contexto.Product.Add(p);
            contexto.SaveChanges();

        }

        List<Product> ListarTodosProduct()
        {
            return contexto.Product.ToList();
        }

        Product BuscarPorId(int id) {
            return contexto.Product.Find(id);
        }

        void Excluir (int id)
        {
            Product pExcluir = BuscarPorId(id);

            if(pExcluir != null)
            {
                contexto.Product.Remove(pExcluir);
                contexto.SaveChanges();
            }
        }

        void Editar (int id, Product novosDadosProduct)
        {
            Product produtoAntigo = BuscarPorId(id);
            if(produtoAntigo != null)
            {
                produtoAntigo.Name = novosDadosProduct.Name;
                produtoAntigo.ProductVendor = novosDadosProduct.ProductVendor;
                produtoAntigo.ProductDocument = novosDadosProduct.ProductDocument;

                contexto.Entry(produtoAntigo).State = System.Data.Entity.EntityState.Modified;
                contexto.SaveChanges();
            }
        }

        List<Product> PersquisarPorProducts(string productName)
        {
            var lista = from p in contexto.Product
                        where p.Name == productName
                        select p;

            return lista.ToList();
        }
    }
}
