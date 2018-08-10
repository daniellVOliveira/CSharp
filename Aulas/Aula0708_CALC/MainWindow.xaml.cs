using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Aula0708_CALC
{
    /// <summary>
    /// Interação lógica para MainWindow.xam
    /// </summary>
    public partial class MainWindow : Window
    {
        public double acumular = 0;
        string oper = "";

        public MainWindow()
        {
            InitializeComponent();
        }

        private void btn1_Click(object sender, RoutedEventArgs e)
        {
            txtDisplay.Text += "1";
        }

        private void btn2_Click(object sender, RoutedEventArgs e)
        {
            txtDisplay.Text += "2";
        }

        private void btn3_Click(object sender, RoutedEventArgs e)
        {
            txtDisplay.Text += "3";
        }

        private void btn4_Click(object sender, RoutedEventArgs e)
        {
            txtDisplay.Text += "4";
        }

        private void btn5_Click(object sender, RoutedEventArgs e)
        {
            txtDisplay.Text += "5";
        }

        private void btn6_Click(object sender, RoutedEventArgs e)
        {
            txtDisplay.Text += "6";
        }

        private void btn7_Click(object sender, RoutedEventArgs e)
        {
            txtDisplay.Text += "7";
        }

        private void btn8_Click(object sender, RoutedEventArgs e)
        {
            txtDisplay.Text += "8";
        }

        private void btn9_Click(object sender, RoutedEventArgs e)
        {
            txtDisplay.Text += "9";
        }

        private void btn0_Click(object sender, RoutedEventArgs e)
        {
            txtDisplay.Text += "0";
        }

        private void btnSoma_Click(object sender, RoutedEventArgs e)
        {
            if (oper == "*" || oper == "-" || oper == "/")
            {
                oper = "+";
            }
            else {
                acumular += double.Parse(txtDisplay.Text);
                txtDisplay.Text = "+";
                oper = "+"; 
            }
        }

        private void btnIgual_Click(object sender, RoutedEventArgs e)
        {
            if (oper == "+")
            {
                acumular += double.Parse(txtDisplay.Text);
                txtDisplay.Text = acumular.ToString();
            }
            else if (oper == "-") {
                acumular -= double.Parse(txtDisplay.Text);
                txtDisplay.Text = acumular.ToString();
            } else if (oper == "*") {
                acumular *= double.Parse(txtDisplay.Text);
                txtDisplay.Text = acumular.ToString();
            }else if (oper == "/")
            if (double.Parse(txtDisplay.Text) != 0){
                acumular /= double.Parse(txtDisplay.Text);
                txtDisplay.Text = acumular.ToString();
                }
                else {
                    txtDisplay.Text = "Divisão por zero!";
                }
        }

        private void btnVirgula_Click(object sender, RoutedEventArgs e)
        {
            txtDisplay.Text += ",";
        }

        private void btnSubtracao_Click(object sender, RoutedEventArgs e)
        {
            {
                if (oper == "*" || oper == "+" || oper == "/")
                {
                    oper = "-";
                }
                else
                {
                    acumular = double.Parse(txtDisplay.Text);
                    txtDisplay.Text = "";
                    oper = "-";
                }
            }
        }
        private void btnMultiplicar_Click(object sender, RoutedEventArgs e)
        {
            {
                if (oper == "+" || oper == "-" || oper == "/")
                {
                    oper = "*";
                }
                else
                {
                    acumular = double.Parse(txtDisplay.Text);
                    txtDisplay.Text = "";
                    oper = "*";
                }
            }

        }

        private void btnDivisao_Click(object sender, RoutedEventArgs e)
        {
            {
                if (oper == "*" || oper == "-" || oper == "+")
                {
                    oper = "/";
                }
                else
                {
                    acumular = double.Parse(txtDisplay.Text);
                    txtDisplay.Text = "/";
                    oper = "";
                }
            }

        }

        private void btnRaiz_Click(object sender, RoutedEventArgs e)
        {
            double x = double.Parse(txtDisplay.Text);
            if (x < 0)
            {
                txtDisplay.Text = "Valor inválido";
            }
            else {
                x = Math.Sqrt(x);
                txtDisplay.Text = x.ToString();
            }
        }

        private void btnLimpar_Click(object sender, RoutedEventArgs e)
        {
            int x = txtDisplay.Text.Length - 1;
            if (x >= 0) {
                txtDisplay.Text = txtDisplay.Text.Substring(0, x);
            }
        }
    }
}
