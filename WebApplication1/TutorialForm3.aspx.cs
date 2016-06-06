using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace WebApplication1
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //AdRotator1.KeywordFilter = "Google";
            if (!IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;
                Calendar1.Visible = false;
            }
        }

        //private void LoadUserName()
        //{
        //    string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        //    using (SqlConnection con = new SqlConnection(CS))
        //    {
        //        string sqlQuery = "SELECT [UserName] FROM[UserStore_CBIA].[dbo].[UserFP]";
        //        SqlCommand cmd = new SqlCommand(sqlQuery, con);
        //        con.Open();
        //        using (SqlDataReader rdr = cmd.ExecuteReader())
        //        {
        //            while (rdr.Read())
        //            {
        //                UserNameTextBox.Text = rdr["UserName"].ToString();
        //                HiddenField1.Value = rdBigevel888r["BLOCKED"].ToString();
        //            }
        //        } 
        //    }
        //}

        //protected void Update_Click(object sender, EventArgs e)
        //{
        //    string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        //    using (SqlConnection con = new SqlConnection(CS))
        //    {
        //        string sqlQuery = "Update UserStore_CBIA.dbo.UserFP set UserName=@Name where UserName=@UserName";
        //        SqlCommand cmd = new SqlCommand(sqlQuery, con);

        //        cmd.Parameters.AddWithValue("@UserName", UserNameTextBox.Text);
        //        cmd.Parameters.AddWithValue("@BLOCKED", HiddenField1.Value);
        //        con.Open();
        //        cmd.ExecuteNonQuery();
        //        con.Close();
        //    }
        //}

        protected void Image1Button_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar1.Visible)
            {
                Calendar1.Visible = false;
            }
            else
            {
                Calendar1.Visible = true;
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox1.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.IsOtherMonth || e.Day.IsWeekend)
            {
                e.Day.IsSelectable = false;
            }
        }

        protected void btnGoToStep2_click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void btnGoToStep3_click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
            lblFirsName.Text = txtFirstName.Text;
            lblLastName.Text = txtLastName.Text;
            lblGender.Text = ddlGender.SelectedValue;
            lblEmail.Text = txtEmail.Text;
            lblPhone.Text = PhoneNumber.Text;
        }

        protected void btnGoToStep1_click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void SubmitBtn(object sender, EventArgs e)
        {
            Response.Redirect("~/angular_page_1.html");
        }
    }
}