using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//This takes over from tutorial video 21
namespace WebApplication1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropDownList1.SelectedValue = "1";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "-1")
            {
                Response.Write("Select a contient");
            }
            else
            {
                Response.Write(DropDownList1.SelectedItem.Text + "<br/>");
                Response.Write(DropDownList1.SelectedItem.Value + "<br/>");
                Response.Write(DropDownList1.SelectedIndex + "<br/>");
            }
        }
    }
}