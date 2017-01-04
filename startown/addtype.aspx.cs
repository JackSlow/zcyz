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

public partial class addtype : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Submit1_ServerClick(object sender, EventArgs e)
    {
        if (Text1.Value.Equals(""))
        {
            Response.Write("<script>alert('请输入类型名称！')</script>");
        }
        else
        {
            string tname = Text1.Value;
            string sql = "insert into types(typename) values('" + tname + "')";
            DBHelper.exeUpdate(sql);
            Response.Write("<script>window.location='backtype.aspx';</script>");
        }
    }
}
