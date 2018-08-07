using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web_form01
{

    public partial class Validation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e){
            //  这个 ValidationExpression 必须写在方法里
            id_validation4.ValidationExpression = "\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*";
        }

        protected void cupValidateFunction(object sender, ServerValidateEventArgs arg){
            string nodeValue = arg.Value.ToUpper();
            if(string.Compare(nodeValue,"A") >= 0 && string.Compare(nodeValue, "H") <= 0 && nodeValue.Length == 1){
                this.ClientScript.RegisterClientScriptBlock(this.GetType(), "msg", "<script>alert('in a - f')</script>");
                arg.IsValid = true;
            }else{
                arg.IsValid = false;
                this.ClientScript.RegisterClientScriptBlock(this.GetType(), "msg", "<script>alert('not in a - f')</script>");
            }
        }
    }
}
