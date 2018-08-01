using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    class Program
    {

        public static int Id { get; set; }

        static void Main(string[] args)
        {

            Console.WriteLine("Hello World");
            Console.ReadKey();

            Console.WriteLine("Digite um número");
            Id = int.Parse(Console.ReadLine());

            Console.WriteLine("Você digitou: " + Id);

            Console.ReadKey();

        }
    }
}
