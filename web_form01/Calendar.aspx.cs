using System;
using System.Web;
using System.Web.UI;

namespace web_form01
{

    public partial class Calendar : System.Web.UI.Page
    {
        protected void calendarClicked(object sender, EventArgs e){
            id_today.Text = id_calendar.TodaysDate.ToShortDateString();
            id_birthday.Text = id_calendar.SelectedDate.ToShortDateString();
        }
    }
}
