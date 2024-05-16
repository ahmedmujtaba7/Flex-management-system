<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student_HOME.aspx.cs" Inherits="Student_HOME" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Database Project</title>
    <link rel="stylesheet" type="text/css"
        href="StyleSheet.css">
    </link>
    <style type="text/css">
        #form1 {
            height: 579px;
            margin-left: 1px;
        }
        </style>
</head>
<body style="height: 601px">
    <form id="form1" runat="server">
        <center>
        <p>
            <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="WELCOME"></asp:Label>
        </p>
            <p>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/NewFolder1/flex.png" />
        </p>
            <p>
                PERSONAL INFORMATION</p>
            <p>
                <asp:Label ID="Label14" runat="server" Font-Bold="True" ForeColor="#000066" Text="STUDENT ID: "></asp:Label>
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="STUDENT ID:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label11" runat="server" Font-Bold="True" ForeColor="#000066" Text="STUDENT NAME:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label12" runat="server" Font-Bold="True" ForeColor="#000066" Text="STUDENT EMAIL:"></asp:Label>
        </p>
            <p>
                &nbsp;</p>
        <p>
            <asp:Button ID="Button1" runat="server" BackColor="#99CCFF" BorderColor="#0000CC" OnClick="Button1_Click" style="margin-left: 41px" Text="Attendance" Font-Size="Large" />
        </p>
        <p>
            &nbsp;</p>
        <p style="margin-left: 40px">
            <asp:Button ID="Button2" runat="server" BackColor="#99CCFF" BorderColor="#0000CC" Height="24px" OnClick="Button2_Click" Text="Marks" Width="100px" />
        </p>
        <p style="margin-left: 40px">
            &nbsp;</p>
        <p style="margin-left: 40px">
            <asp:Button ID="Button3" runat="server" BackColor="#99CCFF" BorderColor="#000066" Text="Transcript" Width="100px" />
        </p>
        <p style="margin-left: 40px">
            &nbsp;</p>
        <p style="margin-left: 40px">
            <asp:Button ID="Button4" runat="server" BackColor="#99CCFF" BorderColor="#000066" OnClick="Button4_Click" Text="Feedback" Width="100px" />
        </p>
        <p style="margin-left: 40px">
            &nbsp;</p>
            <asp:Button ID="Button5" runat="server" BackColor="#00CCFF" BorderStyle="Outset" OnClick="Button5_Click1" Text="LOG OUT" />
        <p style="margin-left: 400px">
                 &nbsp;</p>
            </center>
    </form>
</body>
</html>
