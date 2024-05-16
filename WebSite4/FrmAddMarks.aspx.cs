using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class FrmAddMarks : System.Web.UI.Page
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
            Label6.Text = Session["id"].ToString();
            string strSQL = string.Format("SELECT * FROM TEACHES WHERE FCT_ID=@FT_ID AND YEAR=@year"); // section for dropdown 1
            SqlCommand myCommand = new SqlCommand(strSQL, conn);

            // add parameter
            myCommand.Parameters.AddWithValue("@FT_ID", Request.QueryString["FT_ID"].Trim());
            myCommand.Parameters.AddWithValue("@year", DropDownList2.Text.Trim());
            SqlDataReader reader = myCommand.ExecuteReader();

            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    newItem = new ListItem();
                    newItem.Text = reader["SECTION"].ToString();  // display on dropdown
                    newItem.Value = reader["SECTION"].ToString();  // from database
                    DropDownList1.Items.Add(newItem);
                }
            }
            reader.Close();
            myCommand.Dispose();
            conn.Close();
        }
    }
    int getTC_ID()
    {
        int TC_ID = 0;
        SqlCommand cm;
        SqlConnection conn = new SqlConnection(ConnectionString);
        conn.Open();
        string strSQL = string.Format("SELECT * FROM TEACHES WHERE FCT_ID=@FT_ID AND YEAR=@year AND SECTION=@section"); // year and section accross teacher
        SqlCommand myCommand = new SqlCommand(strSQL, conn);

        myCommand.Parameters.AddWithValue("@FT_ID", Request.QueryString["FT_ID"].Trim());
        myCommand.Parameters.AddWithValue("@year", DropDownList2.Text.Trim());
        myCommand.Parameters.AddWithValue("@section", DropDownList1.Text.Trim());
        SqlDataReader reader = myCommand.ExecuteReader();

        if (reader.HasRows)
        {
            while (reader.Read())
            {
                TC_ID = int.Parse(reader["T_ID"].ToString());  // TID must be integer
            }
        }
        return TC_ID;
    }
  

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }



    protected void Button1_Click1(object sender, EventArgs e)
    {

        SqlCommand cm;
        SqlConnection conn = new SqlConnection(ConnectionString);
        conn.Open();
        int TCourseID = getTC_ID();  // getting teacher course id
        foreach (GridViewRow row in GridView1.Rows)  // for each student/row
        {
            if (row.RowType == DataControlRowType.DataRow) // cannot be null
            {
                int Assign_Marks = 0;
                int Final = 0;
                int Quiz_Marks = 0;  // initially set to 0
                int SessionalI = 0;
                int SessionalII = 0;

                TextBox Assignment_Textbox = (TextBox)row.FindControl("TextBox1");  // naming each textbox
                if (Assignment_Textbox.Text != "")
                    Assign_Marks = int.Parse(Assignment_Textbox.Text);

                TextBox Final_Textbox = (TextBox)row.FindControl("TextBox2");  // names same for eacg row
                if (Final_Textbox.Text != "")
                    Final = int.Parse(Final_Textbox.Text);

                TextBox Quiz_Textbox = (TextBox)row.FindControl("TextBox3");
                if (Quiz_Textbox.Text != "")
                    Quiz_Marks = int.Parse(Quiz_Textbox.Text);

                TextBox SessionalI_Textbox = (TextBox)row.FindControl("TextBox4");
                if (SessionalI_Textbox.Text != "")
                    SessionalI = int.Parse(SessionalI_Textbox.Text);

                TextBox SessionalII_Textbox = (TextBox)row.FindControl("TextBox5");
                if (SessionalII_Textbox.Text != "")
                    SessionalII = int.Parse(SessionalII_Textbox.Text);
                string St_ID = row.Cells[0].Text;  // accross every id

                string query = "INSERT INTO STUDENTS_MARKS(ST_ID,T_ID,SECTION,ASSIGNMENT,FINAL_EXAM,QUIZ,SESSIONAL_I,SESSIONAL_II)" +
                   " VALUES('" + St_ID + "'," + TCourseID + ",'" + DropDownList1.SelectedValue.ToString() + "'," + Assign_Marks + "," +
                   Final + "," + Quiz_Marks + "," + SessionalI + "," + SessionalII + ")";
                cm = new SqlCommand(query, conn);
                cm.ExecuteNonQuery();
                cm.Dispose();
                Label6.Text = "";
                ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "anything", "alert('Marks Saved!');", true);
            }
        }
        GridView1.DataBind();
        conn.Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("FacultyDashBoard.aspx");
    }
}