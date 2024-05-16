<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FrmMarkAttendance.aspx.cs" Inherits="FrmMarkAttendance" %>

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
                <asp:Label ID="Label15" runat="server" BackColor="#CCCCCC" BorderStyle="Double" BorderWidth="10px" Font-Bold="True" Font-Names="Elephant" Font-Size="X-Large" ForeColor="#000066" Height="39px" style="margin-left: 0px" Text="                - MARKS ATTENDANCE-" Width="501px"></asp:Label>
           </center>
        </h1>

        <div>
            <p>
               <center>
                   <asp:Image ID="Image1" runat="server" Height="120px" ImageUrl="~/NewFolder1/Flex.png" Width="334px" />
               </center>
           </p>
        </div>
        <div>
           
<asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
        </div>

        <br />

        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#000099" Text="Select Class:"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" style="margin-left: 16px" Width="250px" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="SECTION" DataValueField="SECTION">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectConnectionString2 %>" SelectCommand="SELECT DISTINCT  [SECTION] FROM [TEACHES] WHERE ([FCT_ID] = @FCT_ID)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Label16" Name="FCT_ID" PropertyName="Text" Type="String" />
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
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectConnectionString2 %>" SelectCommand="SELECT [YEAR] FROM [TEACHES]"></asp:SqlDataSource>
        </div>
        <br />
        
        <br />
        <div>
            <center>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ST_ID" DataSourceID="SqlDataSource1" Width="595px">
                    <Columns>
                        <asp:BoundField HeaderText="ST_ID" DataField="ST_ID" ReadOnly="True" SortExpression="ST_ID" />
                        <asp:BoundField HeaderText="ST_USERNAME" DataField="ST_USERNAME" SortExpression="ST_USERNAME" />
                        <asp:TemplateField HeaderText="ATTENDANCE">
                            <ItemTemplate>
                        <asp:CheckBox ID="CheckBox1" DataField="ATTENDANCE" runat="server" />                          
                    </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectConnectionString2 %>" SelectCommand="SELECT ST_ID, ST_USERNAME FROM STUDENTS WHERE (ST_SECTION = @SECTION) AND (ST_YEAR = @YEAR)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" DefaultValue="Dr" Name="SECTION" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="DropDownList2" Name="YEAR" PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
            <asp:Button ID="Button1" runat="server" Text="Save" Height="34px" Width="86px" OnClick="Button1_Click" />
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" BackColor="#999999" Font-Bold="True" Font-Size="Large" OnClick="Button2_Click" Text="Back" />
            </center>
        </div>
        <br />
        <div>       
        </div>
       

    </form>
</body>
</html>
