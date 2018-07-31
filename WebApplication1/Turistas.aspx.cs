using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication1
{
    public partial class Turistas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonProcurar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/TuristaLista.aspx/?email=" + TextBoxEmail.Text);
        }

        protected void ButtonIncluir_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/TuristaIncluir.aspx");

        }
    }
}