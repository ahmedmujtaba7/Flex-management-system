<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WELCOME.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Database Project</title>
</head>
    <center>
<body style="height: 811px">
    <form id="form1" runat="server">
        <p style="background-color: #00FFFF; background-image: url('NewFolder1/bg3.jpg'); height: 962px;">
        <asp:Label ID="Label1" runat="server" Text="WELCOME TO FAST MANAGEMENT SYSTEM" Font-Bold="True" Font-Italic="True" Font-Names="Cooper Black" Font-Size="XX-Large" ForeColor="#000066"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Image ID="Image1" runat="server" Height="164px" ImageAlign="Middle" ImageUrl="~/NewFolder1/flex.png" ValidateRequestMode="Enabled" />
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" Font-Italic="True" PostBackUrl="https://nu.edu.pk/">For Queries Visit FAST NUCES Website</asp:LinkButton>
            <br style="background-position: 3px 3px; background-color: #00FFFF" />
            <br />
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Arial Rounded MT Bold" Font-Size="X-Large" ForeColor="#3399FF" Text="CHOOSE YOUR LOGIN TYPE"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" BackColor="Silver" BorderStyle="Inset" Font-Bold="True" Font-Names="Britannic Bold" Font-Size="X-Large" ForeColor="#000066" Height="45px" Text="ADMIN" Width="221px" OnClick="Button1_Click" />
            <br />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" BackColor="Silver" BorderColor="#000066" BorderStyle="Inset" Font-Bold="True" Font-Names="Britannic Bold" Font-Size="X-Large" ForeColor="#000066" Text="FACULTY" Width="219px" OnClick="Button2_Click" />
            <br />
            <br />
            <br />
&nbsp;<asp:Button ID="Button3" runat="server" BackColor="Silver" BorderStyle="Inset" Font-Bold="True" Font-Names="Britannic Bold" Font-Size="X-Large" ForeColor="#000066" Text="STUDENT" Width="217px" OnClick="Button3_Click" />
         </p>
    </form>
    
</body>
        </center>
</html>
