﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class SEC1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Text = Session["sec"].ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("AD_HOME.aspx");
    }
}