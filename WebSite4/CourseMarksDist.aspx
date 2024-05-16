
﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CourseMarksDist.aspx.cs" Inherits="CourseMarksDist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head><Database Project</title>
    <link rel="stylesheet" type="text/css"
        href="StyleSheet.css">
    </link>
</head>
<body>
    <form id="form1" runat="server">
        <center>
        <h1>
 SUBJECT
          
        MARKS DISTRIBUTI&nbsp;</p>
            </center>
        <div>
            <p>
               <center>
                   <asp:Image ID="Image1" runat="server" Height="143px" ImageUrl="~/NewFolder1/flex.png" Width="435px" />
               </center>
            <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
           </p>
        </div>
        <br />
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#000099" Text="Select Course:"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="COURSE_ID" DataValueField="COURSE_ID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectConnectionString2 %>" SelectCommand="SELECT DISTINCT [COURSE_ID] FROM [TEACHES] WHERE ([FCT_ID] = @FCT_ID)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Label15" Name="FCT_ID" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        <br />
        <div>
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#000099" Text="Assignment :"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 25px" Width="119px">15</asp:TextBox>
             &nbsp&nbsp
            <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#000099" Text="Range: 0 to 100"></asp:Label>
        </div>
        <br />
        <div>
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#000099" Text="Final Exam :"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 25px" Width="119px">40</asp:TextBox>
             &nbsp&nbsp
            <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#000099" Text="Range: 0 to 100"></asp:Label>
            </div>
        <br />
        <div>
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#000099" Text="Quiz :"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 76px" Width="119px">15</asp:TextBox>
             &nbsp&nbsp
            <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#000099" Text="Range: 0 to 100"></asp:Label>
        </div>
        <br />
        <div>
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#000099" Text="Sessional-I :"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" style="margin-left: 30px; height: 22px;" Width="119px">15</asp:TextBox>
            &nbsp&nbsp
            <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#000099" Text="Range: 0 to 100"></asp:Label>
         </div>
        <br />
        <div>
            <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#000099" Text="Sessional-II :"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" style="margin-left: 23px" Width="119px">15</asp:TextBox>
             &nbsp&nbsp
            <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#000099" Text="Range: 0 to 100"></asp:Label>
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Calculate</asp:LinkButton>
        </div>
        <br />
        <div>
            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#000099" Text="Total :"></asp:Label>
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#000099" Text="100"></asp:Label>
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#000099">?</asp:Label>
        </div>
        <br />
        <br />
        <div>
            <center>
                  <asp:Button ID="Button1" runat="server" Text="Save" style="margin-left: 171px" Width="129px" Height="36px" OnClick="Button1_Click" />                  
                  <asp:Button ID="Button2" runat="server" Text="Reset" style="margin-left: 102px" Width="129px" Height="36px" OnClick="Button2_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Button ID="Button3" runat="server" BackColor="Silver" Font-Bold="True" Font-Size="Large" OnClick="Button3_Click" Text="Back" />
            </center>
        </div>

    </form>
</body>
</html>
CourseMarksDist.aspx
Displaying FrmLogin.aspx.cs.Nextaspx.cs.Nextttaspx.cs.Next.cs.Nextttaspx.cs.Next.cs.Nextttaspx.cs.Next.cs.Nextttaspx.cs.Next.cs.Nextttaspx.cs.Next.cs.Nexts.Nextttaspx.cs.Next.cs.Next