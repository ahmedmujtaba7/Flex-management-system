using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class ASSIGN : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-9Q0KJ0V\\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True"); //Connection String
        conn.Open();

        SqlCommand cm, cm1;
        string ID = TextBox1.Text;
        string TI = TextBox2.Text;
        string CI = TextBox3.Text;
        string SEC = TextBox4.Text;
        string Y = TextBox5.Text;
       


        string query1 = "SELECT * FROM TEACHES WHERE T_ID = '" + ID + "'";
        cm1 = new SqlCommand(query1, conn);
        SqlDataReader res1 = cm1.ExecuteReader();


        if (res1.HasRows)
        {
            ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "anything", "alert(' Already ASSIGNED');", true);
        }
        else
        {
            string query = "Insert into  TEACHES (T_ID,FCT_ID,COURSE_ID,SECTION,YEAR) values " +
                "('" + ID + "','" + TI + "','" + CI + "','" + SEC + "','" + Y  + "')";
            cm = new SqlCommand(query, conn);
            res1.Close();
            SqlDataReader res = cm.ExecuteReader();
            ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "anything", "alert('Succesfully Registered !');", true);
            cm1.Dispose();
            cm.Dispose();
        }

        conn.Close();
        Response.Redirect("AD_HOME.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("AD_HOME.aspx");
    }
}