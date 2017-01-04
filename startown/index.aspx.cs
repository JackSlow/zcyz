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
using System.Data.SqlClient;

public partial class index : System.Web.UI.Page
{
    //public string recommendList = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string recommendSql = "select top 12 * from imglist where isrecommend=1";
            DataSet ds = DBHelper.getDS(recommendSql);
            int cnt = ds.Tables[0].Rows.Count;
            //for (int i = 0; i < cnt; i++)
            //{
            //    string id = ds.Tables[0].Rows[i]["id"].ToString();
            //    string url = ds.Tables[0].Rows[i]["url"].ToString();
            //    recommendList += "<li><a href=\"javascript:;\"><img src=\"" + url + "\" alt=\"\"></a><a href=\"#\"></a></li>";

            //}
        }
    }
    protected void login_ServerClick(object sender, EventArgs e)
    {
        //用户名设置
        if (username.Value.Equals(""))
        {
            Response.Write("<script>alert('请输入用户名！')</script>");
            username.Focus();
            psd.Value = "";
        }
        //密码设置
        if (psd.Value.Equals(""))
        {
            Response.Write("<script>alert('请输入密码！')</script>");
            psd.Focus();
            username.Value = "";
        }

        string name = username.Value;
        string password = psd.Value;
        int power = Convert.ToInt16(admin.Value);
        string sql = "select * from admins where adminname='" + name + "' and password='" + password + "' and power=" + power + "";

        DataSet ds = DBHelper.getDS(sql);

        int cnt = ds.Tables[0].Rows.Count;
        if (cnt > 0)
        {

            HttpCookie cookie = new HttpCookie("aspcn");
            cookie.Value = username.Value;
            Response.AppendCookie(cookie);
            if (power == 1)
            {
                Response.Redirect("backindex.aspx");
            }
            else
            {
                Response.Redirect("person.aspx");
            }


        }
        else
        {
            Response.Write("<script>alert('用户名或密码不正确！');window.location='index.aspx';</script>");
            username.Value = "";
            psd.Value = "";
            username.Focus();

        }
    }
}