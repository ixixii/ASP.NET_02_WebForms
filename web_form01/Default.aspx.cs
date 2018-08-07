using System;
using System.Web;
using System.Web.UI;

namespace web_form01
{

    public partial class Default : System.Web.UI.Page
    {
        public void btnClicked(object sender, EventArgs args)
        {
            if(id_upload.HasFile){
                string savePath = Server.MapPath("~/upload/");
                if(!System.IO.Directory.Exists(savePath)){
                    System.IO.Directory.CreateDirectory(savePath);
                }
                string saveFileFullPath = savePath + "\\" + id_upload.FileName;
                id_upload.SaveAs(saveFileFullPath);
                id_result.Text = string.Format("<a href='upload/{0}'>{0}</a>", id_upload.FileName);
            }
        }
    }
}
