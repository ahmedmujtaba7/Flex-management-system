

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Database Project</title>
    <link rel="stylesheet" type="text/css"
        href="StyleSheet.css">
    </link>
    </head>
<body style="height: 1096px; margin-top: 8px">
    <form id="form1" runat="server">
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image1" runat="server" Height="96px" ImageAlign="Middle" ImageUrl="~/NewFolder1/flex.png" ValidateRequestMode="Enabled" Width="412px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <p style="margin-left: 400px">
            &nbsp;</p>
        <p style="margin-left: 400px">
            <asp:Label ID="Label1" runat="server" BackColor="#99CCFF" BorderColor="#000066" BorderStyle="Solid" Height="25px" Text="Teachers Assessment Form" Font-Bold="True" Font-Italic="True" Font-Size="X-Large"></asp:Label>
        </p>
        <p style="margin-left: 400px">
            &nbsp;</p>
        <asp:Label ID="Label2" runat="server" BackColor="#99CCFF" BorderColor="#000066" BorderStyle="Solid" Text="Date"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" BackColor="#FFCCFF" style="margin-left: 17px"></asp:TextBox>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" BackColor="#99CCFF" BorderStyle="Solid" Text="Teachers Name"></asp:Label>
        </p>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" BackColor="#FFCCFF" ForeColor="Black">first name</asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" BackColor="#FFCCFF">last name</asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label4" runat="server" BackColor="#99CCFF" BorderColor="#000066" BorderStyle="Solid" Text="Subject" Width="90px"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server" BackColor="#FFCCFF"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" BackColor="#99CCFF" BorderColor="#000066" BorderStyle="Solid" Text="Schedule" Width="78px"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox5" runat="server" BackColor="#FFCCFF"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="Label6" runat="server" BackColor="#99CCFF" BorderColor="#000066" BorderStyle="Solid" Text="Room Number"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="TextBox6" runat="server" BackColor="#FFCCFF"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label7" runat="server" BackColor="#99CCFF" BorderColor="#000066" BorderStyle="Solid" Text="School Year"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox7" runat="server" BackColor="#FFCCFF"></asp:TextBox>
        </p>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label8" runat="server" BackColor="#99CCFF" BorderStyle="Solid" Text="Please fill out the form in evaluating your instructor for the semester. After completion, please press the submit button."></asp:Label>
        </p>
        <p>
            &nbsp;&nbsp; &nbsp;<asp:Label ID="Label9" runat="server" BackColor="#99CCFF" BorderStyle="Solid" Text="For reference, the metric are as follows:"></asp:Label>
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;
            <asp:Literal ID="Literal1" runat="server" Text="1  - Poor"></asp:Literal>
            &nbsp;</p>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Literal ID="Literal2" runat="server" Text="2 - Below Average"></asp:Literal>
        </p>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Literal ID="Literal3" runat="server" Text="3- Average"></asp:Literal>
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;
            <asp:Literal ID="Literal4" runat="server" Text="4 - Good"></asp:Literal>
            &nbsp;</p>
        <p>
            &nbsp;&nbsp;&nbsp;
            <asp:Literal ID="Literal5" runat="server" Text="5 - Excellent"></asp:Literal>
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label10" runat="server" BackColor="#99CCFF" BorderStyle="Solid" Text="Appearance and Personal Presentation * :"></asp:Label>
            &nbsp;</p>
    </form>
</body>
</html>
