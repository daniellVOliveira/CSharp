using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
	public partial class Hoteis1 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void ButtonProcurar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/HotelLista.aspx?uf=" + DropDownListUfs.SelectedValue);
        }

        protected void ButtonIncluir_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/HotelIncluir.aspx");
        }
        
    }
}