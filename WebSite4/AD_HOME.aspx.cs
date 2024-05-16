using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["un"] != null)
        {
            Load_Username();
        }
    }

    private void Load_Username()
    {
        Label1.Text = "<b><font color=Blue>" + "WELCOME: " + "</font>" + "<b><font color=black>" + Session["un"] + "</font>";

        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-9Q0KJ0V\\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True");
        conn.Open();
        // ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "anything", "alert('Connection Open');", true);
        SqlCommand cm;

        string str;



        str = "select * from Academic_Officer where AD_USERNAME='" + Session["un"] + "'";
        SqlCommand com = new SqlCommand(str, conn);
        SqlDataAdapter da = new SqlDataAdapter(com);
        DataSet ds = new DataSet();

        da.Fill(ds);
        Label2.Text += ds.Tables[0].Rows[0]["AD_ID"].ToString();
        Label3.Text += ds.Tables[0].Rows[0]["AD_USERNAME"].ToString();
        Label4.Text += ds.Tables[0].Rows[0]["AD_EMAIL"].ToString();
        Label5.Text += ds.Tables[0].Rows[0]["AD_PHONE"].ToString();


    }



    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.Text.Equals("Choose 1 option for Registeration"))
        {

        }
        else if (DropDownList1.Text.Equals("Register Faculty"))
        {
            Response.Redirect("Register_Faculty.aspx");
        }
        else if (DropDownList1.Text.Equals("Register Students"))
        {
            Response.Redirect("Register_Students.aspx");
        }
        else if (DropDownList1.Text.Equals("Register Academic Officer"))
        {
            Response.Redirect("Register_Admin.aspx");
        }
        else if (DropDownList1.Text.Equals("Register Course"))
        {
            Response.Redirect("Register_Course.aspx");
        }
        else if (DropDownList1.Text.Equals("Register a Student in Course"))
        {
            Response.Redirect("Register_stdcourse.aspx");
        }
    }

    protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("WELCOME.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("ASSIGN.aspx");
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList2.Text.Equals("OFFERED COURSE REPORT"))
        {

        }
        else if (DropDownList2.Text.Equals("FALL"))
        {
            Response.Redirect("C2R.aspx");
        }
        else if (DropDownList2.Text.Equals("SPRING"))
        {
            Response.Redirect("C1R.aspx");
        }

        else if (DropDownList2.Text.Equals("SPRING/FALL"))
        {
            Response.Redirect("C3R.aspx");
        }

    }
    


    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        string sec="";
        if (DropDownList4.Text.Equals("BCS-1A"))
        {
            Session["sec"] = DropDownList4.SelectedValue.ToString();
            Response.Redirect("SEC1.aspx");
        }
        else if (DropDownList4.Text.Equals("BCS-1A"))
        {
            Session["sec"] = DropDownList4.SelectedValue.ToString();
            Response.Redirect("SEC1.aspx");
        }
        else
        {
            Session["sec"] = DropDownList4.SelectedValue.ToString();
            Response.Redirect("SEC1.aspx");
        }
    }

    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {
        string c= "";
       
        if (DropDownList5.Text.Equals("BCS-1A"))
        {
            Session["c"] = DropDownList5.SelectedValue.ToString();
            Response.Redirect("TEACHES.aspx");
        }
       
        else
        {
            Session["c"] = DropDownList5.SelectedValue.ToString();
            Response.Redirect("TEACHES.aspx");
        }

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("WELCOME.aspx");
    }
}
   
