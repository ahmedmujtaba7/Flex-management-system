<%@ Page Language="C#" AutoEventWireup="true" CodeFile="C1R.aspx.cs" Inherits="C1R" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Database Project</title>
    <style type="text/css">
        #form1 {
            height: 1075px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-image: url('NewFolder1/bg2.jpg')">
        <center>
        <asp:Label ID="Label1" runat="server" Text="SPRING OFFERED COURSES" Font-Bold="True" Font-Italic="True" Font-Names="Cooper Black" Font-Size="XX-Large" ForeColor="#000066"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Image ID="Image1" runat="server" Height="96px" ImageAlign="Middle" ImageUrl="~/NewFolder1/flex.png" ValidateRequestMode="Enabled" Width="412px" />
            <br />
            <br style="background-position: 3px 3px; background-color: #00FFFF" />
            <br />
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Arial Rounded MT Bold" Font-Size="X-Large" ForeColor="#3399FF" Text="REPORT"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="COURSE_CODE" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="COURSE_CODE" HeaderText="COURSE_CODE" ReadOnly="True" SortExpression="COURSE_CODE" />
                    <asp:BoundField DataField="CREDIT_HOURS" HeaderText="CREDIT_HOURS" SortExpression="CREDIT_HOURS" />
                    <asp:BoundField DataField="SEMESTER" HeaderText="SEMESTER" SortExpression="SEMESTER" />
                    <asp:BoundField DataField="DEPT" HeaderText="DEPT" SortExpression="DEPT" />
                    <asp:BoundField DataField="COURSE_COORDINATOR_ID" HeaderText="COURSE_COORDINATOR_ID" SortExpression="COURSE_COORDINATOR_ID" />
                    <asp:BoundField DataField="COURSE_NAME" HeaderText="COURSE_NAME" SortExpression="COURSE_NAME" />
                    <asp:BoundField DataField="POST_REQ" HeaderText="POST_REQ" SortExpression="POST_REQ" />
                </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectConnectionString %>" SelectCommand="SELECT [COURSE_CODE], [CREDIT_HOURS], [SEMESTER], [DEPT], [COURSE_COORDINATOR_ID], [COURSE_NAME], [POST_REQ] FROM [COURSE] WHERE ([SEMESTER] = @SEMESTER)">
            <SelectParameters>
                <asp:Parameter DefaultValue="SPRING" Name="SEMESTER" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
            <asp:Button ID="Button1" runat="server" BackColor="#669999" BorderStyle="Ridge" Font-Bold="True" Font-Italic="True" Font-Size="Large" OnClick="Button1_Click" Text="BACK" />
            </center>
    </form>
</body>
</html>
