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

public partial class backindex : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie cookie = Request.Cookies["aspcn"];
        if (cookie != null)
        {
            txtname.Value = cookie.Value;
        }
        else
        {
            Response.Write("<script>alert('请先登录或注册');window.location='index.aspx';</script>");
        }
    }
}
