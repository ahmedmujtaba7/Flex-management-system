using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Register_Admin : System.Web.UI.Page
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
        

        string query1 = "SELECT * FROM Academic_Officer WHERE AD_ID = '" + ID + "'";
        cm1 = new SqlCommand(query1, conn);
        SqlDataReader res1 = cm1.ExecuteReader();


        if (res1.HasRows)
        {
            ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "anything", "alert('User Already Exists');", true);
        }
        else
        {
            string query = "Insert into Academic_Officer (AD_ID,AD_USERNAME,AD_PASSWORD,AD_AGE,AD_EMAIL,AD_PHONE,AD_ROLE) values " +
                "('" + ID + "','" + un + "','" + pass + "','" + age + "','" + email + "','" + phone + "','" + role  + "')";
            cm = new SqlCommand(query, conn);
            res1.Close();
            SqlDataReader res = cm.ExecuteReader();
            ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "anything", "alert('Teacher Succesfully Registered !');", true);
            cm1.Dispose();
            cm.Dispose();
        }

        conn.Close();
        Response.Redirect("AD_HOME.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("AD_HOME.aspx");
    }
}