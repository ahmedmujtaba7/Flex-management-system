using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Register_Course : System.Web.UI.Page
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
        string un = TextBox2.Text;
        string CR = TextBox3.Text;
        string PR = TextBox4.Text;
        string SEM = TextBox5.Text;
        string DEPT = TextBox6.Text;
        string CD = TextBox7.Text;
        

        string query1 = "SELECT * FROM COURSE WHERE COURSE_CODE = '" + ID + "'";
        cm1 = new SqlCommand(query1, conn);
        SqlDataReader res1 = cm1.ExecuteReader();


        if (res1.HasRows)
        {
            ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "anything", "alert(' Already REGISTERED');", true);
        }
        else
        {
            string query = "Insert into  COURSE (COURSE_CODE,COURSE_NAME,CREDIT_HOURS,POST_REQ,SEMESTER,DEPT,COURSE_COORDINATOR_ID) values " +
                "('" + ID + "','" + un + "','" + CR + "','" + PR+ "','" + SEM + "','" + DEPT + "','" + CD + "')";
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