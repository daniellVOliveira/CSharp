using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Aula2108_CodeFirst.Modelos
{
    class Categoria
    {
        //Chave Primária é reconhecida se usar a palavra Id ou nomeClasseID
        [Key] //Usado quando não é utilizado nenhuma nomenclatura reconhecida pelo Entity
        public int CategoriaID { get; set; }

        [Required]
        [StringLength(30)]
        public string Nome { get; set; }

        public string Descricao { get; set; }

        public virtual ICollection<Produto> _Produtos { get; set; }


    }
}
