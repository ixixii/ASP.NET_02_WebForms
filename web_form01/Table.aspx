<%@ Page Language="C#" Inherits="web_form01.Table" %>
<!DOCTYPE html>
<html>
<head runat="server">
	<title>Table</title>
</head>
<body>
	<form id="form1" runat="server">
            <div>
                <table style="width:50%">
                    <tr>
                        <td>Name: </td>
                        <td>
                            <asp:TextBox id="id_input_name" runat="server">
                            </asp:TextBox>
                        </td>
                    </tr>


                    <tr>
                        <td>Age: </td>
                        <td>
                            <asp:TextBox id="id_input_age" runat="server">
                            </asp:TextBox>
                        </td>
                    </tr>


                    <tr>
                        <td>Cup: </td>
                        <td>
                            <asp:TextBox id="id_input_cup" runat="server">
                            </asp:TextBox>
                        </td>
                    </tr>


                    <tr>
                        <td>Empty</td>
                        <td id="id_td_result" runat="server">
                            
                        </td>
                    </tr>

                    
                </table>
            </div>


            <asp:Button id="id_btn" runat="server" OnClick="btnClicked" Text="show Girl"/>
	</form>
</body>
</html>
