using System;
using System.Web;
using System.Web.UI;

namespace web_form01
{

    public partial class MView : System.Web.UI.Page
    {
        protected void dropDownClicked(object sender, EventArgs e){
            id_mview.ActiveViewIndex = id_dropDown.SelectedIndex;
        }

        protected void mviewChanged(object sender, EventArgs e)
        {
            id_dropDown.SelectedIndex = id_mview.ActiveViewIndex;
        }
    }
}
