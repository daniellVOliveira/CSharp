using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.BLL;
using WebApplication1.Models;

namespace WebApplication1
{
    public partial class HotelIncluir : System.Web.UI.Page
    {
        private static ReservasService hotelService = new ReservasService();
        protected void Page_Load(object sender, EventArgs e)
        {
            // normalmente não mostra a mensagem de sucesso
            ScriptModalSucesso.Visible = false;
        }

        protected void ButtonEfetivar_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                // cria uma instância de Hotel com os dados do formulário
                Hotel hotel = new Hotel();
                if (TextBoxCEP.Text.Length > 0)
                {
                    hotel.Cep = int.Parse(TextBoxCEP.Text);
                }
                hotel.Cidade = TextBoxCidade.Text;
                hotel.Complemento = TextBoxComplemento.Text;
                if (TextBoxDDD.Text.Length > 0)
                {
                    hotel.Ddd = int.Parse(TextBoxDDD.Text);
                }
                hotel.Descricao = TextBoxDescricao.Text;
                hotel.Endereco = TextBoxEndereco.Text;
                hotel.Nome = TextBoxNome.Text;
                if (TextBoxNumero.Text.Length > 0)
                {
                    if (TextBoxNumero.Text == "S.N.")
                    {
                        hotel.Numero = 0;
                    } else
                    {
                        hotel.Numero = int.Parse(TextBoxNumero.Text);
                    }
                }
                if (TextBoxTelefone.Text.Length > 0)
                {
                    hotel.Telefone = int.Parse(TextBoxTelefone.Text);
                }
                hotel.Uf = DropDownListUF.SelectedValue;
                // executa o serviço que cria o hotel na base de dados
                hotelService.incluirHotel(hotel);
                // após a inclusão mostra mensagem de sucesso
                ScriptModalSucesso.Visible = true;
                // e o formulário vazio.
                TextBoxCEP.Text = "";
                TextBoxCidade.Text = "";
                TextBoxComplemento.Text = "";
                TextBoxDDD.Text = "";
                TextBoxDescricao.Text = "";
                TextBoxEndereco.Text = "";
                TextBoxNome.Text = "";
                TextBoxNumero.Text = "";
                TextBoxTelefone.Text = "";
                DropDownListUF.SelectedIndex = 0;
            }
        }

        protected void ButtonVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Hoteis.aspx");
        }

        protected void TextBoxNumero_TextChanged(object sender, EventArgs e)
        {

        }
    }
}