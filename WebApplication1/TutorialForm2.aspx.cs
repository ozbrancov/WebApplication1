using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

//This takes over from tutorial video 21
namespace WebApplication1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //DropDownList1.SelectedValue = "1";
                //string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

                //using (SqlConnection con = new SqlConnection(CS))
                //{
                //    SqlCommand cmd = new SqlCommand("SELECT TOP 10 [UserName] FROM [UserStore_CBIA].[dbo].[UserFP]", con);
                //    con.Open();
                //    DropDownListSQL.DataSource = cmd.ExecuteReader();
                //    DropDownListSQL.DataTextField = "UserName";
                //    DropDownListSQL.DataValueField = "UserName";
                //    DropDownListSQL.DataBind();
                //}
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

        protected void Button2_click(object sender, EventArgs e)
        {
            foreach(ListItem li in CheckBoxList1.Items)
            {
                li.Selected = true;
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            foreach(ListItem li in CheckBoxList1.Items)
            {
                li.Selected = false;
            }
        }

        protected void SelectAll_Click(object sender, EventArgs e)
        {
            foreach (ListItem li in CheckBoxList1.Items)
            {
                li.Selected = true;
            }
        }
    }
}