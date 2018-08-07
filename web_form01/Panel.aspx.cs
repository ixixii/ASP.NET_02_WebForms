using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web_form01
{

    public partial class Panel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e){
            id_panel.Visible = id_checkbox.Checked;

            int n = Int32.Parse(id_dropDown1.SelectedItem.Value);
            for (int i = 0; i < n; i++){

                Label label = new Label();
                label.Text = "New Label " + (i + 1).ToString();
                id_panel.Controls.Add(label);
                id_panel.Controls.Add(new LiteralControl("<br/>"));
            }

            int m = Int32.Parse(id_dropDown2.SelectedItem.Value);
            for (int i = 0; i < m; i++)
            {

                TextBox box = new TextBox();
                box.Text = "New Box " + (i + 1).ToString();
                id_panel.Controls.Add(box);
                id_panel.Controls.Add(new LiteralControl("<br/>"));
            }
        }
    }
}
