using System;
using System.Web;
using System.Web.UI;

namespace web_form01
{

    public partial class SManager : System.Web.UI.Page
    {
        // partical post
        protected void btnClicked(object sender, EventArgs e){
            string tiemStr = DateTime.Now.ToLongTimeString();
            int i = 0;
                while(i < int.MaxValue){
                i++;
            }
            id_label.Text = "Panel Time is : " + tiemStr;
            id_label2.Text = "Outside Time is : " + tiemStr;
        }


        // full post
        protected void btn2Clicked(object sender, EventArgs e)
        {
            string tiemStr = DateTime.Now.ToLongTimeString();
            id_label.Text = "Panel Time is : " + tiemStr;
            id_label2.Text = "Outside Time is : " + tiemStr;
        }


        protected void timerTicked(object sender, EventArgs e){
            string tiemStr = DateTime.Now.ToLongTimeString();
            id_label.Text = "Panel Time is : " + tiemStr;
            id_label2.Text = "Outside Time is : " + tiemStr;
        }
    }
}
