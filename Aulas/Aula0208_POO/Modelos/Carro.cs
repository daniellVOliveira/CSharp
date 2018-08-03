using System;


namespace Aula0208_POO.Modelos
{
    class Carro : Veiculo, IMotorizado
    {
        public int Velocidade { get; set; }

        public void Acelerar()
        {
            Console.WriteLine("Carro: Pisando no pedal");
            Velocidade += 5;

        }

        public void Frenar()
        {
            Console.WriteLine("Carro: Pisando no pedal");
            Velocidade -= 3;

        }
    }
}
