using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using MySqlX.XDevAPI;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {



    SqlConnection conn = new SqlConnection("Data Source=DESKTOP-9Q0KJ0V\\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True");
        conn.Open();
       // ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "anything", "alert('Connection Open');", true);
        SqlCommand cm;
        string un = TextBox3.Text;
        string pass = TextBox2.Text;
        string id;
       string query = "SELECT * FROM Academic_Officer WHERE AD_USERNAME = '" + un + "' AND AD_PASSWORD = '" + pass + "'";
        

        cm = new SqlCommand(query, conn);

        SqlDataReader res = cm.ExecuteReader();


if (!res.HasRows)
        {
            ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "anything", "alert('No such username found');", true);
           
        }
        else
        {

            ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "anything", "alert('Successfully logged in!');", true);
                 Session["un"] = TextBox3.Text;
            Response.Redirect("AD_HOME.aspx");
        }

        Console.WriteLine("After method call, value of res : {0}", res);
        cm.Dispose();
        conn.Close();
       
    }

    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}