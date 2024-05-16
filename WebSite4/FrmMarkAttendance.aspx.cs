using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class FrmMarkAttendance : System.Web.UI.Page
{
    string ConnectionString = "Data Source=DESKTOP-9Q0KJ0V\\SQLEXPRESS;Initial Catalog = Project; Integrated Security = True";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)  
        {
            DropDownList1.Items.Clear();
            ListItem newItem;

            SqlConnection conn = new SqlConnection(ConnectionString);
            conn.Open();

           
            Label16.Text = Session["id"].ToString();

            string strSQL = string.Format("SELECT * FROM TEACHES WHERE FCT_ID=@FT_ID AND YEAR=@year");  // year and section of respective teacher
            SqlCommand myCommand = new SqlCommand(strSQL, conn);



            // add parameter
            myCommand.Parameters.AddWithValue("@FT_ID", Request.QueryString["FT_ID"].Trim());  // faculty id sent
            myCommand.Parameters.AddWithValue("@year", DropDownList2.Text.Trim());

            SqlDataReader reader = myCommand.ExecuteReader();

            if (reader.HasRows) // rows in db
            {
                while (reader.Read())
                {
                    newItem = new ListItem();
                    newItem.Text = reader["SECTION"].ToString();
                    newItem.Value = reader["SECTION"].ToString();
                    DropDownList1.Items.Add(newItem);
                }
            }

            reader.Close();
            myCommand.Dispose();
            conn.Close();
        }
    }
    int getTC_ID() // getting T_ID AS ITS PRIMARY KEY
    {
        int TC_ID = 0;
        SqlCommand cm;
        SqlConnection conn = new SqlConnection(ConnectionString);
        conn.Open();

        string strSQL = string.Format("SELECT * FROM TEACHES WHERE FCT_ID=@FT_ID AND YEAR=@year AND SECTION=@section");  // to show sections of individual teachers
        SqlCommand myCommand = new SqlCommand(strSQL, conn);

        myCommand.Parameters.AddWithValue("@FT_ID", Request.QueryString["FT_ID"].Trim());
        myCommand.Parameters.AddWithValue("@year", DropDownList2.Text.Trim());
        myCommand.Parameters.AddWithValue("@section", DropDownList1.Text.Trim());

        SqlDataReader reader = myCommand.ExecuteReader();

        if (reader.HasRows)
        {
            while (reader.Read())
            {
                TC_ID = int.Parse(reader["T_ID"].ToString());
            }
        }
        return TC_ID;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cm;
        SqlConnection conn = new SqlConnection(ConnectionString);
        conn.Open();

        foreach (GridViewRow row in GridView1.Rows)
        {
            if (row.RowType == DataControlRowType.DataRow)
            {
                CheckBox chkAttendance = row.FindControl("CheckBox1") as CheckBox; //naming checkbox
                string attendanceStatus;

                if(chkAttendance.Checked)
                {
                    attendanceStatus = "PRESENT";
                }
                else
                {
                    attendanceStatus = "ABSENT";
                }

                string St_ID = row.Cells[0].Text; // first index is student id
                int TCourseID = getTC_ID();

                //insert qquery
                string query;
                query= "INSERT INTO STUDENT_ATTENDANCE(ST_ID,T_ID,SECTION,ATTENDANCE,ATT_DATE) VALUES('" + St_ID + "',"+ TCourseID   + ",'" +  DropDownList1.SelectedValue.ToString()  + "','" + attendanceStatus + "','" + DateTime.Parse(TextBox1.Text).Date  + "')";
                cm = new SqlCommand(query, conn);                
                cm.ExecuteNonQuery();
                cm.Dispose();
                Label16.Text = "";
                ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "anything", "alert('Attendance Saved!');", true);

            }
        }
        conn.Close();
    }





    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("FacultyDashBoard.aspx");
    }
}