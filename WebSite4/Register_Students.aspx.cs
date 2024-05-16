using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Register_Students : System.Web.UI.Page
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
        string pass = TextBox3.Text;
        string age = TextBox4.Text;
        string email = TextBox5.Text;
        string phone = TextBox6.Text;
        string role = TextBox7.Text;
        string dept = TextBox8.Text;
        string sec = TextBox9.Text;
        string year = TextBox10.Text;

        string query1 = "SELECT * FROM STUDENTS WHERE ST_ID = '" + ID + "'";
        cm1 = new SqlCommand(query1, conn);
        SqlDataReader res1 = cm1.ExecuteReader();


        if (res1.HasRows)
        {
            ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "anything", "alert('User Already Exists');", true);
        }
        else
        {
            string query = "Insert into STUDENTS (ST_ID,ST_USERNAME,ST_PASSWORD,ST_AGE,ST_EMAIL,ST_PHONE,ST_ROLE,ST_DEPT,ST_SECTION,ST_YEAR) values " +
                "('" + ID + "','" + un + "','" + pass + "','" + age + "','" + email + "','" + phone + "','" + role + "','" + dept + "','" + sec + "','" + year + "')";
            cm = new SqlCommand(query, conn);
            res1.Close();
            SqlDataReader res = cm.ExecuteReader();
            ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "anything", "alert('Student Succesfully Registered !');", true);
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