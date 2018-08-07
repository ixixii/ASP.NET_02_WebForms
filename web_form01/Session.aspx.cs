using System;
using System.Web;
using System.Web.UI;

namespace web_form01
{

    public partial class Session : System.Web.UI.Page
    {
        string _str;
        protected void Page_Load(object sender, EventArgs e){
            this.id_label_session.Text = (string)this.Session["key_name"];
            this.id_label_PageField.Text = this._str;


            Response.Write(Application["key_author"]);
        }

        protected void btn2Clicked(object sender,EventArgs e){
            this._str = this.id_input.Text;
            this.Session["key_name"] = this.id_input.Text;


            this.id_label_session.Text = (string)this.Session["key_name"];
            this.id_label_PageField.Text = this._str;

        }
    }
}
