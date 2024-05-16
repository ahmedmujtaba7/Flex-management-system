using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class FrmLogin : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-9Q0KJ0V\\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True");
        conn.Open();
        // ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "anything", "alert('Connection Open');", true);
        SqlCommand cm;
        string un = TextBox1.Text;
        string pass = TextBox2.Text;
        string id;
        string query = "SELECT * FROM FACULTY WHERE FT_USERNAME = '" + un + "' AND FT_PASSWORD = '" + pass + "'";


        cm = new SqlCommand(query, conn);

        SqlDataReader res = cm.ExecuteReader();


        if (!res.HasRows)
        {
          
            
                Label1.Visible = true;
                Label1.Text = "You are not Authorized User ";


                Label1.Visible = true;
                TextBox1.Text = "";
                TextBox2.Text = "";
            
            ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "anything", "alert('No such username found');", true);

        }
        else
        {

            ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "anything", "alert('Successfully logged in!');", true);

            // AUTHENTICATION
            if (DropDownList1.Text.Equals("FACULTY"))
                Session["un"] = TextBox1.Text;
            {
                Response.Redirect("FacultyDashBoard.aspx?FT_USERNAME=" + ID);  // FACULTY PAGE
            }
        }

        Console.WriteLine("After method call, value of res : {0}", res);
        cm.Dispose();
        conn.Close();
       

       
            
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}