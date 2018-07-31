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
    public partial class TuristaIncluir : System.Web.UI.Page
    {
        private static ReservasService turistaService = new ReservasService();
        protected void Page_Load(object sender, EventArgs e)
        {
            ScriptModalSucesso.Visible = false;
        }

        protected void RadioButtonSexo_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void ButtonEfetivar_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                Turista turista = new Turista();
                if (RadioButtonListSexo.SelectedValue == "Masculino"){
                    turista.Sexo = true;

                }
                else
                {
                    turista.Sexo = false;
                }
                if (TextBoxCpf.Text.Length > 0) 
                {
                    turista.Cpf = int.Parse(TextBoxCpf.Text);
                }

                if (TextBoxDataNascimento.Text.Length > 0)
                {
                    turista.DataNascimento = DateTime.Parse(TextBoxDataNascimento.Text);
                }
                turista.Nome = TextBoxNome.Text;
                turista.Email = TextBoxEmail.Text;
                turistaService.incluirTurista(turista);
                ScriptModalSucesso.Visible = true;

                TextBoxNome.Text = "";
                TextBoxEmail.Text = "";
                TextBoxDataNascimento.Text = "";
                RadioButtonListSexo.SelectedValue = null;


            }
        }

        protected void ButtonVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Turistas.aspx");
        }

        protected void RadioButtonListSexo_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButtonListSexo_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}