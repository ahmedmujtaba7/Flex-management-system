<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Marks.aspx.cs" Inherits="Marks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 1071px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-image: url('NewFolder1/bg2.jpg')">
       <center>
        <asp:Label ID="Label1" runat="server" Text="STUDENT MARKS" Font-Bold="True" Font-Italic="True" Font-Names="Cooper Black" Font-Size="XX-Large" ForeColor="#000066"></asp:Label>
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
           <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
           <br />
           <br />
           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
               <Columns>
                   <asp:BoundField DataField="ST_ID" HeaderText="ST_ID" SortExpression="ST_ID" />
                   <asp:BoundField DataField="ASSIGNMENT" HeaderText="ASSIGNMENT" SortExpression="ASSIGNMENT" />
                   <asp:BoundField DataField="FINAL_EXAM" HeaderText="FINAL_EXAM" SortExpression="FINAL_EXAM" />
                   <asp:BoundField DataField="QUIZ" HeaderText="QUIZ" SortExpression="QUIZ" />
                   <asp:BoundField DataField="SESSIONAL_I" HeaderText="SESSIONAL_I" SortExpression="SESSIONAL_I" />
                   <asp:BoundField DataField="SESSIONAL_II" HeaderText="SESSIONAL_II" SortExpression="SESSIONAL_II" />
               </Columns>
           </asp:GridView>
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectConnectionString2 %>" SelectCommand="SELECT [ST_ID], [ASSIGNMENT], [FINAL_EXAM], [QUIZ], [SESSIONAL_I], [SESSIONAL_II] FROM [STUDENTS_MARKS]
where ST_ID=@ID">
               <SelectParameters>
                   <asp:ControlParameter ControlID="Label3" Name="ID" PropertyName="Text" />
               </SelectParameters>
           </asp:SqlDataSource>
           <br />
            <asp:Button ID="Button1" runat="server" BackColor="#669999" BorderStyle="Ridge" Font-Bold="True" Font-Italic="True" Font-Size="Large" OnClick="Button1_Click" Text="BACK" />
   </center>
           </form>
</body>
</html>
