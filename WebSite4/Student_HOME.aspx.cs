using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Student_HOME : System.Web.UI.Page
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
        Label13.Text = "<b><font color=Blue>" + "WELCOME: " + "</font>" + "<b><font color=black>" + Session["un"] + "</font>";

        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-9Q0KJ0V\\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True");
        conn.Open();
        // ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "anything", "alert('Connection Open');", true);
        SqlCommand cm;

        string str;
        string id;
        string id2;

        str = "select * from STUDENTS where ST_USERNAME='" + Session["un"] + "'";
        SqlCommand com = new SqlCommand(str, conn);
        SqlDataAdapter da = new SqlDataAdapter(com);
        DataSet ds = new DataSet();
        da.Fill(ds);
        Label10.Text = ds.Tables[0].Rows[0]["ST_ID"].ToString();
        Label11.Text += ds.Tables[0].Rows[0]["ST_USERNAME"].ToString();
        Label12.Text += ds.Tables[0].Rows[0]["ST_EMAIL"].ToString();
       

        com.Dispose();
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        string id = "";
        Session["id"] = Label10.Text.ToString();
        Response.Redirect("Attendance.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)

    { 

    string id = "";
    Session["id"] = Label10.Text.ToString();
       Response.Redirect("Marks.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Student_feedback.aspx");
    }
   

    protected void Button5_Click1(object sender, EventArgs e)
    {
        Response.Redirect("WELCOME.aspx");
    }
}