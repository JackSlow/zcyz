using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class down : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        object fileName = System.Web.HttpContext.Current.Server.MapPath( Request.QueryString["filename"]);
        System.IO.FileInfo DownloadFile = new System.IO.FileInfo(fileName.ToString());
        Response.Clear();
        Response.ClearHeaders();
        Response.Buffer = false;
        Response.ContentType = "application/octet-stream";
        Response.AppendHeader("Content-Disposition", "attachment;filename=" + Request.QueryString["filename"]);
        Response.AppendHeader("Content-Length", DownloadFile.Length.ToString());
        Response.WriteFile(DownloadFile.FullName);
        Response.Flush();
        Response.End();
    }
}
