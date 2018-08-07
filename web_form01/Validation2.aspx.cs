using System;
using System.Web;
using System.Web.UI;

namespace web_form01
{

    public partial class Validation2 : System.Web.UI.Page
    {

        protected void Page_Load(){
            //  这个 ValidationExpression 必须写在方法里
            id_validation4.ValidationExpression = "\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*";
        }
        protected void submitBtnClicked(object sender, EventArgs e){
            if(Page.IsValid){
                id_label1.Text = "Every Field is OK";
            }else{
                id_label1.Text = "Input Errors Exsit";
            }
        }
    }
}
