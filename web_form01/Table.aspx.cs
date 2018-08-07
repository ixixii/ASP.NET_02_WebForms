using System;
using System.Web;
using System.Web.UI;

namespace web_form01
{

    public partial class Table : System.Web.UI.Page
    {
        protected void btnClicked(object sender, EventArgs e){
            string str = "";
            str += id_input_name.Text + "<br/>";
            str += id_input_age.Text + " years old<br/>";
            str += id_input_cup.Text.ToUpper() + " cup<br/>";
            id_td_result.InnerHtml = str;
        }
    }
}
