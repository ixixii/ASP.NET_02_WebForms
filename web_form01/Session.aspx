<%@ Page Language="C#" Inherits="web_form01.Session" %>
<!DOCTYPE html>
<html>
<head runat="server">
	<title>Session</title>
</head>
<body>
	<form id="form1" runat="server">

            
            <table style="width:568px;height:103px;">
                <tr>
                    <td>
                        <asp:Label id="id_label" runat="server"
                                   Text="Entery your name" ></asp:Label>
                    </td>

                    <td>
                        <asp:TextBox runat="server" id="id_input"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                </tr>

                <tr>
                    <td>
                        <asp:Button runat="server" 
                                    Text="No Action Btn" id="id_btn1"></asp:Button>
                    </td>

                    <td>
                        <asp:Button runat="server" 
                                    OnClick="btn2Clicked"
                                    Text="Submit Name"
                                    id="id_btn2"></asp:Button>
                    </td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                </tr>

                <tr>
                    <td>
                        Session : 
                        <asp:Label id="id_label_session" runat="server"></asp:Label>
                    </td>
                    <td></td>
                </tr>


                <tr>
                    <td>
                        Page Field: 
                        <asp:Label id="id_label_PageField" runat="server"></asp:Label>
                    </td>
                    <td></td>
                </tr>

                
            </table>
	</form>
</body>
</html>
