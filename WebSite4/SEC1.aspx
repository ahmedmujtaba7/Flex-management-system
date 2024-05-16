<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SEC1.aspx.cs" Inherits="SEC1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Database Project</title>
    <style type="text/css">
        #form1 {
            height: 996px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-image: url('NewFolder1/bg2.jpg')">
        <center>
        <asp:Label ID="Label1" runat="server" Text="STUDENTS REGISTERED/SECTION " Font-Bold="True" Font-Italic="True" Font-Names="Cooper Black" Font-Size="XX-Large" ForeColor="#000066"></asp:Label>
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
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ST_ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="ST_ID" HeaderText="ST_ID" ReadOnly="True" SortExpression="ST_ID" />
                    <asp:BoundField DataField="ST_USERNAME" HeaderText="ST_USERNAME" SortExpression="ST_USERNAME" />
                    <asp:BoundField DataField="ST_SECTION" HeaderText="ST_SECTION" SortExpression="ST_SECTION" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectConnectionString2 %>" SelectCommand="SELECT [ST_ID], [ST_USERNAME], [ST_SECTION] FROM [STUDENTS] WHERE ([ST_SECTION] = @ST_SECTION) ORDER BY [ST_ID]">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Label3" Name="ST_SECTION" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" BackColor="#669999" BorderStyle="Ridge" Font-Bold="True" Font-Italic="True" Font-Size="Large" OnClick="Button1_Click" Text="BACK" />
    </center>
            </form>
</body>
</html>
