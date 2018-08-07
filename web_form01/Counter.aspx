<%@ Page Language="C#" Inherits="web_form01.Counter" %>
<!DOCTYPE html>
<html>
<head runat="server">
	<title>Counter</title>
</head>
<body>
	<form id="form1" runat="server">

            <asp:Label id="id_label" runat="server" />
            <asp:Button id="id_btn" runat="server" Text="Click Me" 
                        OnClick="btnClicked" />
	</form>
</body>
</html>
