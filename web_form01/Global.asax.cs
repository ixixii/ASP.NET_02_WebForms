using System.Web;

namespace web_form01
{
    public class Global : HttpApplication
    {
        protected void Application_Start()
        {
            Application["key_author"] = "beyond";
        }

        protected void Application_End(){
            Application["key_over"] = "App Exit";
        }
    }
}
