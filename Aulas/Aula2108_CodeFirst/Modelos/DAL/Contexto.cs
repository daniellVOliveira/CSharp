using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Aula2108_CodeFirst.Modelos.DAL
{
    public class Contexto : DbContext //Classe contexto deve herdar a classe DbContext (Entity)
    {
        public Contexto() : base("nomeStringConexao")
        {

        }

         DbSet<Categoria> Categorias { get; set; }

         DbSet<Produto> Produtos { get; set; }
    }
}
