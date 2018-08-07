<%@ Page Language="C#" Inherits="web_form01.Panel" %>
<!DOCTYPE html>
<html>
<head runat="server">
	<title>Panel</title>
</head>
<body>
	<form id="form1" runat="server">
            <!--<asp:Panel id="id_panel0" runat="server" 
                       BorderColor="teal" BorderStyle="Solid" 
                       Height="116px" ScrollBars="Both" Style="width:278px;">
                Hello Beyond
                <br/><br/>
                <asp:Button id="id_btn0" runat="server" Text="Click Me" Style="width:82px" />
                
            </asp:Panel>-->





            <div>
                <asp:Panel id="id_panel" runat="server" BorderColor="#990000"
                           BorderStyle="Solid" BorderWidth="1px"
                           Height="150px" ScrollBars="Both" Style="width:60%"
                           BackColor="#CCCCFF" Font="Courier"
                           HorizontalAlign="Center">
                    
                </asp:Panel>
            </div>


            <table style="width:50%;">
                <tr>
                    <td>
                        Number of Labels:
                    </td>

                    <td>
                        <asp:DropDownList id="id_dropDown1" runat="server">
                            <asp:ListItem>0</asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>



                <tr>
                    <td>Empty</td>
                    <td>Empty</td>
                </tr>


                <tr>
                    <td>
                        Number of TextBoxs:
                    </td>

                    <td>
                        <asp:DropDownList id="id_dropDown2" runat="server">
                            <asp:ListItem>0</asp:ListItem>
                            <asp:ListItem Value="1"></asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem Value="4"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>


                <tr>
                    <td>Empty</td>
                    <td>Empty</td>
                </tr>


                <tr>
                    <td>
                        <asp:CheckBox id="id_checkbox" runat="server" Text="is Panel Visible" />
                    </td>

                    <td>
                        <asp:Button id="id_btn_refresh" runat="server" Text="Refresh Panel" />
                    </td>
                </tr>

                
            </table>
	</form>
</body>
</html>
