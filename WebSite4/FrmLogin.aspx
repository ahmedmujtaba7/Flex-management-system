<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FrmLogin.aspx.cs" Inherits="FrmLogin" %>

<!DOCTYPE html>
<script runat="server">

</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Database Project</title>
    <link rel="stylesheet" type="text/css"
        href="StyleSheet.css">
     </link>
</head>
<body>
    <form id="form1" runat="server">
        <h1>
            <center>
            WELCOME TO FLEX
                  </center>
                </h1>
        <div>
           <p>
               <center>
                   <asp:Image ID="Image1" runat="server" Height="131px" ImageUrl="~/NewFolder1/flex.png" Width="411px" />
               </center>
           </p>
        </div>
        <br /><br />
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#000099" Text="ID:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" Height="22px" style="margin-left: 41px" Width="232px" ></asp:TextBox>
        <br />
        <p>
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#000099" Text="Username:"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Height="22px" style="margin-left: 41px" Width="232px"></asp:TextBox>
        </p>
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#000099" Text="Password:"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" type="password" Height="22px" style="margin-left: 46px" Width="229px"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#000099" Text="Login As:"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" Height="33px" style="margin-left: 53px" Width="168px">
            <asp:ListItem>FACULTY</asp:ListItem>
        </asp:DropDownList>
        <br />
        <p>
            <center>
                <asp:Button ID="Button1" runat="server" Height="36px" Text="Login" Width="87px" OnClick="Button1_Click" />
            </center>
        </p>

      <br /><br /><br /><br />
        <p>
            <center>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#000099" Text="Incorrect Username or Password" Visible="False"></asp:Label>
            </center>
        </p>

    </form>
</body>
</html>