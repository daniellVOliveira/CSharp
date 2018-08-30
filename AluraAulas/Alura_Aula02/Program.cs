using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Alura_Aula02
{
    class Program
    {
        static void Main(string[] args)
        {
            ContaCorrente contaDaCamila = new ContaCorrente();
            contaDaCamila.titular = new Cliente();
            contaDaCamila.titular.nome = "Camila dos Santos";

            Console.WriteLine("Nome da conta: " + contaDaCamila.titular.nome);


            Console.ReadLine();
        }
    }
}
