<%@ Page Language="C#" Inherits="web_form01.Validation" %>
<!DOCTYPE html>
<html>
<head runat="server">
	<title>Validation</title>
</head>
<body>
	<form id="form1" runat="server">
            Name:
            <asp:TextBox id="id_input_name" runat="server" ></asp:TextBox>
            <asp:RequiredFieldValidator id="id_validation1" runat="server"
                                        ControlToValidate="id_input_name"
                                        ErrorMessage="Name Must Not Empty"
                                        >
            </asp:RequiredFieldValidator>
            <br/>



            Age(0-130):
            <asp:TextBox id="id_input_age" runat="server"></asp:TextBox>

            <asp:RangeValidator id="id_validation2" runat="server"
                                ControlToValidate="id_input_age"
                                ErrorMessage="Age is Between 0-130"
                                MaximumValue="130"
                                MinimumValue="0"
                                Type="Integer">
            </asp:RangeValidator>


            <br/>
            Password:
            <asp:TextBox id="id_input_password" runat="server"></asp:TextBox>
            <br/>

            Confirm Password:
            <asp:TextBox id="id_input_confirm_password" runat="server"></asp:TextBox>
            <br/>
            <asp:CompareValidator id="id_validation3" runat="server"
                                  ErrorMessage="two password not match"
                                  ControlToValidate="id_input_confirm_password"
                                  ControlToCompare="id_input_password"
            ></asp:CompareValidator>



            <br/>
            <asp:TextBox id="id_input_email" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator id="id_validation4" runat="server"
                                  ErrorMessage="Error Email Format"
                                  ControlToValidate="id_input_email" >
            </asp:RegularExpressionValidator>
                                  


            <br/>
            <asp:TextBox id="id_input_cup" runat="server"></asp:TextBox>
            <asp:CustomValidator id="id_validation5" runat="server"
                                 ClientValidationFunction="checkFunction"
                                 ControlToValidate="id_input_cup"
                                 Display="Dynamic"
                                 OnServerValidate="cupValidateFunction"
                                 ValidateEmptyText="true"
                                 ErrorMessage="cup is A-H"
                                 ></asp:CustomValidator>






            <asp:ValidationSummary id="id_validation6" runat="server"
                                   DisplayMode="BulletList"
                                   ShowSummary="true"
                                   HeaderText="Oops, Error: " />
                
            <asp:Button id="id_btn" runat="server" Text="Submit"></asp:Button>

	</form>

        <script type="text/javascript">
            function checkFunction(source,arg){
                // console.log(source)
                var nodeValue = arg.Value.toUpperCase()
                console.log(nodeValue)
                if(nodeValue.length == 1 && nodeValue >= 'A' &&  nodeValue <= 'H' ){
                        arg.IsValid = true
                        console.log("true")
                }else{
                        arg.IsValid = false
                        console.log("false")
                }            
            }
        </script>
</body>
</html>
