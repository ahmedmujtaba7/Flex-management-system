using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class FacultyDashBoard : System.Web.UI.Page
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
        Label4.Text = "<b><font color=Blue>" + "WELCOME: " + "</font>" + "<b><font color=black>" + Session["un"] + "</font>";

        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-9Q0KJ0V\\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True");
        conn.Open();
        // ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "anything", "alert('Connection Open');", true);
        SqlCommand cm;

        string str;
        string id;
        string id2;

        str = "select * from FACULTY where FT_USERNAME='" + Session["un"] + "'";
        SqlCommand com = new SqlCommand(str, conn);
        SqlDataAdapter da = new SqlDataAdapter(com);
        DataSet ds = new DataSet();
        da.Fill(ds);
        Label5.Text = ds.Tables[0].Rows[0]["FT_ID"].ToString();
        Label6.Text += ds.Tables[0].Rows[0]["FT_USERNAME"].ToString();
        Label7.Text += ds.Tables[0].Rows[0]["FT_EMAIL"].ToString();
        Label9.Text += ds.Tables[0].Rows[0]["FT_PHONE"].ToString();

        com.Dispose();
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("WELCOME.aspx");
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        Session["id2"] = Label5.Text;
        Response.Redirect("CourseMarksDist.aspx?FT_ID=" + Request.QueryString["FT_ID"]);
        Context.ApplicationInstance.CompleteRequest();
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session["id"] = Label5.Text;
        Response.Redirect("FrmMarkAttendance.aspx?FT_ID=" + Request.QueryString["FT_ID"], false);
        Context.ApplicationInstance.CompleteRequest();
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Session["id"] = Label5.Text;
        Response.Redirect("FrmAddMarks.aspx?FT_ID=" + Request.QueryString["FT_ID"], false);
        Context.ApplicationInstance.CompleteRequest();
    }
}