<%@ Page Language="C#" Inherits="web_form01.Default" %>
<!DOCTYPE html>
<html>
<head runat="server">
	<title>Default</title>
</head>
<body>
	<form id="form1" runat="server">
		
        <asp:FileUpload id="id_upload" runat="server" />
            <asp:Label id="id_result" runat="server" />
            <br/>
            <asp:Button id="id_btn" runat="server" 
                        Text="Upload" OnClick="btnClicked" />
	</form>


        
</body>
</html>
