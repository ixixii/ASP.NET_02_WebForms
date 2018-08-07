<%@ Page Language="C#" Inherits="web_form01.Ads" %>
<!DOCTYPE html>
<html>
<head runat="server">
	<title>Ads</title>
</head>
<body>
	<form id="form1" runat="server">
            <div>
                <asp:AdRotator id="id_adRotator" runat="server" 
                               AdvertisementFile="~/ads.xml"
                               OnAdCreated="onAdCreated"/>
            </div>
	</form>
</body>
</html>
