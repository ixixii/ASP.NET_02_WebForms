<%@ Page Language="C#" Inherits="web_form01.SManager" %>
<!DOCTYPE html>
<html>
<head runat="server">
	<title>SManager</title>
</head>
<body>
	<form id="form1" runat="server">
            <div>
                <asp:ScriptManager id="id_smanager" runat="server" />
            </div>

            <asp:UpdatePanel id="id_panel" runat="server">
                <ContentTemplate>
                    <asp:Button id="id_btn" runat="server" OnClick="btnClicked"
                                Text="Partial PostBack"/>
                    <br/><br/>
                    <asp:Label id="id_label" runat="server" />



                    
                    <asp:Timer id="id_timer" runat="server" Interval="1000" OnTick="timerTicked">
                        
                    </asp:Timer>


                    <asp:Label id="id_label_explaination" runat="server" 
                               Text="注意:  点击 btn2 时, 会执行btn2的方法, 但是: 只会进行局部刷新UpdatePanel中的元素"></asp:Label>
                </ContentTemplate>

                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="id_btn2" EventName="Click"/>
                </Triggers>
            </asp:UpdatePanel>


            <p>Outside the Update Panel</p>
            <p>
                <asp:Button id="id_btn2" runat="server"
                            Text="Full Post"
                            OnClick="btn2Clicked"/>
            </p>
            <asp:Label id="id_label2" runat="server" />


            <asp:UpdateProgress id="id_progress" runat="server"
                                DynamicLayout="true"
                                AssociatedUpdatePanelID="id_panel">
                <ProgressTemplate>
                    Loading...
                </ProgressTemplate>
            </asp:UpdateProgress>
	</form>
</body>
</html>
