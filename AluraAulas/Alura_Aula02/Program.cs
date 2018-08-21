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
            ContaCorrente conta1 = new ContaCorrente();
            ContaCorrente conta2 = new ContaCorrente();

            conta1.Depositar(100);

            Console.WriteLine("Saldo da conta 1:" + conta1.saldo);


            conta1.Tranferir(100, conta2);

            Console.WriteLine("Saldo da conta 1:" + conta1.saldo);
            Console.WriteLine("Saldo da conta 2:" + conta2.saldo);

            Console.ReadLine();
        }
    }
}
