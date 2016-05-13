using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GraduateCheckBox.Focus();
                //ButtonCommandEvent.Click += new EventHandler(ButtonCommand_Click); This is the same as the methods below
                //ButtonCommandEvent.Command += new CommandEventHandler(ButtonCommandEvent_Command); CommandEventHandler is a delegate, has to call a function/method when Command 
                //events happen on ButtonCommandEvent element

                ListItem maleListItem = new ListItem("Male", "1"); //Loads list item objects at runtime.
                ListItem femaleListItem = new ListItem("Female", "2");
                DropDownList1.Items.Add(maleListItem);
                DropDownList1.Items.Add(femaleListItem);

                //Below, adds Items to Dropdown2 From XML file countries.xml
                DataSet DS = new DataSet();
                DS.ReadXml(Server.MapPath("countries_data.xml")); // maps localhost(virtual path) to physical path 
                DropdownList2.DataTextField = "CountryName"; // DataTestField and DataValueField can be specified in aspx file as well
                DropdownList2.DataValueField = "CountryId";
                DropdownList2.DataSource = DS;
                DropdownList2.DataBind();

                ListItem li = new ListItem("Select", "-1");
                DropdownList2.Items.Insert(0, li); //add to the first
            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            StringBuilder sbUserChoices = new StringBuilder();
            if (GraduateCheckBox.Checked)
            {
                sbUserChoices.Append(GraduateCheckBox.Text);
            }
            if (PostGraduateCheckBox.Checked)
            {
                sbUserChoices.Append(PostGraduateCheckBox.Text);
            }
            if (DoctorateCheckBox.Checked)
            {
                sbUserChoices.Append(DoctorateCheckBox.Text);
            }
            Response.Write("Your Selections: " + sbUserChoices.ToString());
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Write("Postback Triggered");
        }

        protected void ButtonCommand_Click(object sender, EventArgs e)
        {
            Response.Write("Button Click Event <br/>");  //Relates to the method below
        }

        protected void ButtonCommandEvent_Command(object sender, CommandEventArgs e)
        {
            switch (e.CommandName)
            {
                case "number 1":
                    OutputLabel.Text = "You clicked the first button";
                    break;
                case "number 2":
                    OutputLabel.Text = "You clicked the second button";
                    break;
            }
        }
    }
}