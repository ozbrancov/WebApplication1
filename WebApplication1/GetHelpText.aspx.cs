using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class GetHelpText : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            divResult.InnerText = GetHelpTextByKey(Request["HelpTextKey"]); //passing they key and storing as text
        }
        private string GetHelpTextByKey(string key)
        {
            string helpText = string.Empty;

            string cs = ConfigurationManager.ConnectionStrings["DBCS2"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("spGetHelpTextByKey", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter parameter = new SqlParameter("@HelpTextKey", key);
                cmd.Parameters.Add(parameter);
                con.Open();
                helpText = cmd.ExecuteScalar().ToString();
            }

            return helpText;
        }
    }
}