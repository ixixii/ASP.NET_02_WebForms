<%@ Page Language="C#" Inherits="web_form01.MView" %>
<!DOCTYPE html>
<html>
<head runat="server">
	<title>MView</title>
        <meta http-equiv="content-type" content="text/html;charset=utf-8" />
</head>
<body>
	<form id="form1" runat="server">
            <div>
                <asp:DropDownList id="id_dropDown" runat="server" 
                                  AutoPostBack="true"
                                  OnSelectedIndexChanged="dropDownClicked">
                    <asp:ListItem Value="1">1</asp:ListItem>
                    <asp:ListItem Value="2">2</asp:ListItem>
                    <asp:ListItem Value="3">3</asp:ListItem>
                </asp:DropDownList>
                <hr/>

                <asp:MultiView id="id_mview" runat="server"
                               ActiveViewIndex="0"
                               OnActiveViewChanged="mviewChanged" >


                    <asp:View id="id_view1" runat="server" >
                        <h3>View 1</h3>
                        <asp:Button id="id_btn11" runat="server"
                                    CommandName="NextView"
                                    Text="Goto Next"/>
                        
                        <asp:Button id="id_btn12" runat="server"
                                    CommandArgument="id_view3"
                                    CommandName="SwitchViewByID"
                                    Text="Goto Last"/>
                    </asp:View>


                    <asp:View id="id_view2" runat="server" >
                        <h3>View 2</h3>
                        <asp:Button id="id_btn21" runat="server"
                                    CommandName="NextView"
                                    Text="Goto Next"/>
                        
                        <asp:Button id="id_btn22" runat="server"
                                    CommandArgument="id_view3"
                                    CommandName="PrevView"
                                    Text="Goto Previous View"/>
                    </asp:View>



                    <asp:View id="id_view3" runat="server" >
                        <h3>View 3</h3>
                        <asp:Calendar id="id_calendar" runat="server" ></asp:Calendar>
                        <br/>
                        <asp:Button id="id_btn31" runat="server"
                                    CommandArgument="0"
                                    CommandName="SwitchViewByIndex"
                                    Text="Goto Next"/>
                        
                        <asp:Button id="id_btn32" runat="server"
                                    CommandName="PrevView"
                                    Text="Goto Previous View"/>
                    </asp:View>
                              
                    
                </asp:MultiView>
                
            </div>
	</form>
</body>
</html>
