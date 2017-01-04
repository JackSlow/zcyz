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

public partial class addadmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Submit1_ServerClick(object sender, EventArgs e)
    {
        if (Text1.Value.Equals(""))
        {
            Response.Write("<script>alert('请输入用户名！')</script>");
        }
        if (Text2.Value.Equals(""))
        {
            Response.Write("<script>alert('请输入密码！')</script>");
        }
        if (Text3.Value.Equals(""))
        {
            Response.Write("<script>alert('请再次输入密码！')</script>");
        }
        if (Text3.Value == Text2.Value)
        {
            string name = Text1.Value;
            string psw = Text2.Value;
            int pow =Convert.ToInt16(Request.Form["ql"]);

            string sql = "insert into admins(adminname,password,power) values('" + name + "','" + psw + "','" + pow + "')";
            string sql1 = "insert into pson(personname,collected) values('" + name + "',0)";
            DBHelper.exeUpdate(sql);
            DBHelper.exeUpdate(sql1);
            Response.Write("<script>window.location='admin.aspx';</script>");
        }
        else
        {
            Response.Write("<script>alert('两次密码不相同！请重新添加');window.location='addadmin.aspx';</script>");
            return;
        }
    }
}