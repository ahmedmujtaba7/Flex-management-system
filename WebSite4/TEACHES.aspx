<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TEACHES.aspx.cs" Inherits="TEACHES" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Database Project</title>
    <style type="text/css">
        #form1 {
            height: 990px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-image: url('NewFolder1/bg2.jpg')">
        <center>
        <asp:Label ID="Label1" runat="server" Text="COURSE ASSIGNMENT" Font-Bold="True" Font-Italic="True" Font-Names="Cooper Black" Font-Size="XX-Large" ForeColor="#000066"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Image ID="Image1" runat="server" Height="96px" ImageAlign="Middle" ImageUrl="~/NewFolder1/flex.png" ValidateRequestMode="Enabled" Width="412px" />
            <br />
            <br style="background-position: 3px 3px; background-color: #00FFFF" />
            <br />
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Arial Rounded MT Bold" Font-Size="X-Large" ForeColor="#3399FF" Text="REPORT"></asp:Label>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="FT_ID" HeaderText="FT_ID" SortExpression="FT_ID" />
                    <asp:BoundField DataField="FT_USERNAME" HeaderText="FT_USERNAME" SortExpression="FT_USERNAME" />
                    <asp:BoundField DataField="COURSE_CODE" HeaderText="COURSE_CODE" SortExpression="COURSE_CODE" />
                    <asp:BoundField DataField="COURSE_NAME" HeaderText="COURSE_NAME" SortExpression="COURSE_NAME" />
                    <asp:BoundField DataField="CREDIT_HOURS" HeaderText="CREDIT_HOURS" SortExpression="CREDIT_HOURS" />
                    <asp:BoundField DataField="SECTION" HeaderText="SECTION" SortExpression="SECTION" />
                    <asp:BoundField DataField="COURSE_COORDINATOR_ID" HeaderText="COURSE_COORDINATOR_ID" SortExpression="COURSE_COORDINATOR_ID" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectConnectionString2 %>" SelectCommand="SELECT F.FT_ID, F.FT_USERNAME, C.COURSE_CODE, C.COURSE_NAME, C.CREDIT_HOURS, T.SECTION, C.COURSE_COORDINATOR_ID FROM COURSE AS C INNER JOIN TEACHES AS T ON C.COURSE_CODE = T.COURSE_ID INNER JOIN FACULTY AS F ON F.FT_ID = T.FCT_ID 
where C.COURSE_CODE=@CODE">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Label3" Name="CODE" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:Button ID="Button1" runat="server" BackColor="#669999" BorderStyle="Ridge" Font-Bold="True" Font-Italic="True" Font-Size="Large" OnClick="Button1_Click" Text="BACK" />
   </center>
            </form>
</body>
</html>
