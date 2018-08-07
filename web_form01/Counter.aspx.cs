using System;
using System.Web;
using System.Web.UI;

namespace web_form01
{

    public partial class Counter : System.Web.UI.Page
    {
        
        public int counter{
            get{
                if(ViewState["page_counter"] != null){
                    return (int)ViewState["page_counter"];
                }else{
                    return 0;
                }
            }
            set{
                ViewState["page_counter"] = value;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            id_label.Text = this.counter.ToString();
            this.counter++;
        }

        protected void btnClicked(object sender,EventArgs e){
            id_label.Text = this.counter.ToString();

        }

    }
}
