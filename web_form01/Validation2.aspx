<%@ Page Language="C#" Inherits="web_form01.Validation2" %>
<!DOCTYPE html>
<html>
<head runat="server">
	<title>Validation2</title>
</head>
<body>
	<form id="form1" runat="server">
            <table>
                <tr>
                    <td colspan="3" align="center">
                        <asp:Label id="id_label1" runat="server"
                                   Text="Choose a girl:">
                        </asp:Label>
                    </td>
                </tr>

                <tr>
                    <td>
                        Candidate Girls: 
                    </td>
                    <td>
                        <asp:DropDownList id="id_dropDown" runat="server">
                            <asp:ListItem>--Please Choose A Girl--</asp:ListItem>
                            <asp:ListItem>Saber</asp:ListItem>
                            <asp:ListItem>Mathilda</asp:ListItem>
                            <asp:ListItem>Menma</asp:ListItem>
                        </asp:DropDownList>
                    </td>

                    <td>
                        <asp:RequiredFieldValidator id="id_validation1" runat="server"
                                                    ControlToValidate="id_dropDown"
                            ErrorMessage="Girl Must Not Null">
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>


                <tr>
                    <td>
                        Cup:
                    </td>

                    <td>
                        <asp:RadioButtonList id="id_radioList" runat="server"
                                             RepeatLayout="Flow">
                            <asp:ListItem>A</asp:ListItem>
                            <asp:ListItem>B</asp:ListItem>
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>D</asp:ListItem>
                            <asp:ListItem>E</asp:ListItem>
                            <asp:ListItem>F</asp:ListItem>
                            <asp:ListItem>G</asp:ListItem>
                            <asp:ListItem>H</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>

                    <td>
                        <asp:RequiredFieldValidator id="id_validation2" runat="server"
                             ControlToValidate="id_radioList"
                             ErrorMessage="Cup Must Not Null">
                        </asp:RequiredFieldValidator>                       
                    </td>
                </tr>


                <tr>
                    <td>
                        age : 
                    </td>
                    
                    <td>
                        <asp:TextBox id="id_input_age" runat="server">
                        </asp:TextBox>
                    </td>

                    <td>
                        <asp:RangeValidator id="id_validation3" runat="server"
                                            ControlToValidate="id_input_age"
                                            ErrorMessage="Age is 9-14"
                                            MaximumValue="14"
                                            MinimumValue="9"
                                            Type="Integer">
                        </asp:RangeValidator>
                    </td>
                </tr>

                <tr>
                    <td>
                        Email: 
                    </td>

                    <td>
                        <asp:TextBox id="id_input_email" runat="server" >
                        </asp:TextBox>
                    </td>

                    <td>
                        <asp:RegularExpressionValidator id="id_validation4" runat="server"
                                                    ControlToValidate="id_input_email"
                                                        ErrorMessage="Email Format Wrong">
                        </asp:RegularExpressionValidator>
                    </td>
                </tr>

                <tr>
                    <td colspan="3">
                        <asp:Button id="id_btn_submit" runat="server"
                                    OnClick="submitBtnClicked"
                                    Style="text-align:center"
                                    Text="Submit"
                                    Width="140px">
                        </asp:Button>
                    </td>
                </tr>
            </table>

            <asp:ValidationSummary id="id_validation5" runat="server"
                                   DisplayMode="BulletList"
                                   ShowSummary="true"
                                   HeaderText="Oops Error: ">
            </asp:ValidationSummary>
	</form>
</body>
</html>
