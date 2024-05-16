using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Reflection.Emit;

public partial class CourseMarksDist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       // DropDownList1.Items.Clear();
        ListItem newItem;
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-9Q0KJ0V\\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True");
        conn.Open();
        string strSQL = string.Format("SELECT T_ID,COURSE_NAME  FROM TEACHES,COURSE WHERE TEACHES.COURSE_ID=COURSE.COURSE_CODE AND FCT_ID = @FT_ID");
        SqlCommand myCommand = new SqlCommand(strSQL, conn);
        Label15.Text = Session["id2"].ToString();
        // add parameter
        myCommand.Parameters.AddWithValue("@FT_ID", Request.QueryString["FT_ID"]);

        SqlDataReader reader = myCommand.ExecuteReader();

        if (reader.HasRows)
        {
            while (reader.Read())  // adds all subjects to dropdown
            {
                newItem = new ListItem();
                newItem.Text = reader["COURSE_NAME"].ToString();
                newItem.Value = reader["T_ID"].ToString();
               // DropDownList1.Items.Add(newItem);

            }
        }

        reader.Close();
        myCommand.Dispose();
        conn.Close();
    }

    protected void Button2_Click(object sender, EventArgs e)  // DIRECTS TO THIS AT RESET
    {
        TextBox1.Text = "15";
        TextBox2.Text = "40";
        TextBox3.Text = "15";
        TextBox4.Text = "15";   // setting random default values
        TextBox5.Text = "15";
        Label7.Text = "100";
        Label8.Text = "";
    }

    protected void Button1_Click(object sender, EventArgs e)  // SAVE BUTTON
    {
        SqlCommand cm;
        int Assign = int.Parse(TextBox1.Text);
        int Final = int.Parse(TextBox2.Text); 
        int Quiz = int.Parse(TextBox3.Text);
        int SessI = int.Parse(TextBox4.Text);
        int SessII = int.Parse(TextBox5.Text);
      

        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-9Q0KJ0V\\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True");
        conn.Open();


        string query = "Insert into MARKS_DIST(T_ID,ASSIGN,FINAL,QUIZ,SESSIONALI,SESSIONALII) values( '" +DropDownList1.SelectedValue  + " '," + Assign + "," + Final + "," + Quiz + "," + SessI + "," + SessII + ")";
        cm = new SqlCommand(query, conn);
        SqlDataReader res = cm.ExecuteReader();
        cm.Dispose();
        conn.Close();

        TextBox1.Text = "0";
        TextBox2.Text = "0";
        TextBox3.Text = "0";
        TextBox4.Text = "0";
        TextBox5.Text = "0";
        Label7.Text = "";
        Label8.Text = "Marks Distribution saved successfully";
    }



    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        decimal Total = decimal.Parse(TextBox1.Text) + decimal.Parse(TextBox2.Text) + decimal.Parse(TextBox3.Text) + decimal.Parse(TextBox4.Text) + decimal.Parse(TextBox5.Text);
        Label7.Text = Total.ToString();
        if (Total < 100)
            Label8.Text = (100 - Total).ToString() + " Marks Left"; // should be 100
        else if (Total == 100)
            Label8.Text = " Marks Completed!!";
        else
            Label8.Text = " Marks should not be greater than 100!!";
    }


    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("FacultyDashBoard.aspx");
    }
}