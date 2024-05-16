<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FrmAddMarks.aspx.cs" Inherits="FrmAddMarks" %>

<!DOCTYPE html>

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
                <asp:Label ID="Label5" runat="server" BackColor="#CCCCCC" BorderStyle="Double" BorderWidth="10px" Font-Bold="True" Font-Names="Elephant" Font-Size="X-Large" ForeColor="#000066" Height="39px" style="margin-left: 0px" Text="                - STUDENT MARKS -" Width="501px"></asp:Label>
             </center>
        </h1>
        <div>
            <p>
                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
               <center>
                   <asp:Image ID="Image1" runat="server" Height="120px" ImageUrl="~/NewFolder1/Flex.png" Width="334px" />
               </center>
           </p>
        </div>

        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#000099" Text="Select Class:"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" style="margin-left: 16px" Width="250px" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="SECTION" DataValueField="SECTION">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectConnectionString2 %>" SelectCommand="SELECT DISTINCT  [SECTION] FROM [TEACHES] WHERE ([FCT_ID] = @FCT_ID)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Label6" Name="FCT_ID" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
            &nbsp&nbsp
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#000099" Text="Year:"></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server" Height="30px" style="margin-left: 16px" Width="250px" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="YEAR" DataValueField="YEAR">
                <asp:ListItem>2020</asp:ListItem>
                <asp:ListItem>2021</asp:ListItem>
                <asp:ListItem>2022</asp:ListItem>
                <asp:ListItem Selected="True">2023</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectConnectionString2 %>" SelectCommand="SELECT DISTINCT [YEAR] FROM [TEACHES]"></asp:SqlDataSource>
        </div>
        <br />
        
        <asp:GridView ID="GridView1" runat="server"  BackColor="#CCCCCC" BorderColor="#003399" BorderStyle="Solid" CellPadding="3" ForeColor="#000099" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" DataKeyNames="ST_ID" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>                
                <asp:BoundField DataField="ST_ID" HeaderText="ST_ID"  runat="server" ReadOnly="True" SortExpression="ST_ID"/>
                <asp:BoundField DataField="ST_USERNAME" HeaderText="ST_USERNAME"  runat="server" SortExpression="ST_USERNAME"/>
                 <asp:TemplateField HeaderText="Assignment">
                    <ItemTemplate>
                        <center>
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>  
                            </center>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Final Exam">
                    <ItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>            
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Quiz">
                    <ItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>            
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Sessional I">
                    <ItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>            
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Sessional II">
                    <ItemTemplate>
                                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>            
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <RowStyle HorizontalAlign="Center" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectConnectionString2 %>" SelectCommand="SELECT ST_ID, ST_USERNAME FROM STUDENTS WHERE (ST_SECTION = @SECTION) AND (ST_YEAR = @YEAR)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="SECTION" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="DropDownList2" Name="YEAR" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        
        <asp:Button ID="Button1" runat="server" BackColor="#0066CC" Font-Bold="True" Font-Size="Large" OnClick="Button1_Click1" Text="Submit" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" BackColor="#00CCFF" Font-Size="Large" OnClick="Button2_Click" Text="Back" />
        
        <br />
        <br />
        <div>       
        </div>
    </form>
</body>
</html>
