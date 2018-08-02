using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    class Program
    {

        public static int Num1 { get; set; }
        public static int Num2 { get; set; }
        public static int soma { get; set; }
        public static int subtracao { get; set; }
        public static int multiplicacao { get; set; }
        public static int divisao { get; set; }

        static void Main(string[] args)
        {

            String op;

            Console.WriteLine("Digite o primeiro número");
            Num1 = int.Parse(Console.ReadLine());

            Console.WriteLine("Digite o segundo número");
            Num2 = int.Parse(Console.ReadLine());
            Console.WriteLine("Selecione a sua operação");

            op = Console.ReadLine();
            switch (op)
            {
                case "+":
                    realizarSoma(Num1, Num2);
                    break;
                case "-":
                    realizarSubtracao(Num1, Num2);
                    break;
                case "*":
                    realizarMultiplicacao(Num1, Num2);
                    break;
                case "/":
                    realizarDivisao(Num1, Num2);
                    break;
                default:
                    break;
            }

            Console.ReadKey();

        }

        static void realizarSoma(int Num1, int Num2 ){
            soma = Num1 + Num2;
            Console.WriteLine("A soma é: " + soma);
        }

        static void realizarSubtracao(int Num1, int Num2) {
            subtracao = Num1 - Num2;
            Console.WriteLine("A subtração é: " + subtracao);
        }

        static void realizarMultiplicacao(int Num1, int Num2) {
            multiplicacao = Num1 * Num2;
            Console.WriteLine("A multiplicação é: " + multiplicacao);
        }

        static void realizarDivisao(int Num1, int Num2)
        {
            divisao = Num1 / Num2;
            Console.WriteLine("A divisão é: " + divisao);
        }

    }
}
