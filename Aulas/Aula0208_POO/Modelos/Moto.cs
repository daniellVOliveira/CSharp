using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Aula0208_POO.Modelos
{
    class Moto : Veiculo, IMotorizado
    {
        public int Velocidade { get; set; }

        public void Acelerar()
        {
            Console.WriteLine("Moto: Acelerando girando a manopla");
            Velocidade += 10;
        }

        public void Frenar()
        {
            Console.WriteLine("Moto: Freando pisando no pedal");
            Velocidade -= 5;
        }
    }
}