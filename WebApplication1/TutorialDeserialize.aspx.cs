using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Serialization;

namespace WebApplication1
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string jsonString = "[{\"id\":\"1\",\"name\":\"Grover\",\"gender\":\"Male\",\"city\":london},{\"id\":\"2\",\"name\":\"Baker\",\"gender\":\"Female\",\"city\":Los angeles}]";

            JavaScriptSerializer javascriptserializer = new JavaScriptSerializer();  
            List<students> listStudents = (List<students>)javascriptserializer.Deserialize(jsonString, typeof(List<students>));

            foreach(students student in listStudents)
            {
                Response.Write("id= " + student.id + "<br/>");
                Response.Write("name= " + student.name + "<br/>");
                Response.Write("gender= " + student.gender + "<br/>");
                Response.Write("city= " + student.city + "<br/>");

            }
        }
    }
}