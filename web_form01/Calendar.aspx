<%@ Page Language="C#" Inherits="web_form01.Calendar" %>
<!DOCTYPE html>
<html>
<head runat="server">
	<title>Calendar</title>
        <meta http-equiv="content-type" content="text/html;charset=utf-8" />
</head>
<body>
	<form id="form1" runat="server">
            <div>
                <h3>Your Birthday</h3>
                <asp:Calendar id="id_calendar" runat="server" SelectionMode="DayWeekMonth"
                              OnSelectionChanged="calendarClicked"></asp:Calendar>
            </div>

            Today :  
            <asp:Label id="id_today" runat="server"/>
            <br/>
            You Choose : 
            <asp:Label id="id_birthday" runat="server" />
	</form>
</body>
</html>
