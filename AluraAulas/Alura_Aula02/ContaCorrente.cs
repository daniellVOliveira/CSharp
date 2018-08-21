using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Alura_Aula02
{
    class ContaCorrente
    {
        public string titular;
        public int agencia;
        public int numero;
        public double saldo;

        public void Depositar(double valor)
        {
            this.saldo += valor;
        }

        public bool Sacar (double valor)
        {
            if (valor < this.saldo) {
                return false;
            }

            this.saldo -= valor;
            return true;

        }

        public bool Tranferir(double valor, ContaCorrente contaDeDestino) {
            if (this.saldo < valor) {
                return false;
            }

            this.saldo -= valor;
            contaDeDestino.Depositar(valor);
            return true;
        }
    }

}
