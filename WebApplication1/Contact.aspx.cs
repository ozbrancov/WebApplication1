﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (MaleRadioButton.Checked)
            {
                Response.Write("Your Gender is " + MaleRadioButton.Text);
            }
            else if (FemaleRaidoButton.Checked)
            {
                Response.Write("Your Gender is " + FemaleRaidoButton.Text);
            }
            else
            {
                Response.Write("WTF " + UnknownRadioButton.Text);
            }
        }
    }
}