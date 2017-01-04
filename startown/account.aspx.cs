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


public partial class account : System.Web.UI.Page
{
    public string recommendList = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string recommendSql = "select top 12 * from imglist where isrecommend=1";
            DataSet ds = DBHelper.getDS(recommendSql);
            int cnt = ds.Tables[0].Rows.Count;
            for (int i = 0; i < cnt; i++)
            {
                string id = ds.Tables[0].Rows[i]["id"].ToString();
                string url = ds.Tables[0].Rows[i]["url"].ToString();
                recommendList += "<li><a href=\"javascript:;\"><img src=\"" + url + "\" alt=\"\"></a><a href=\"#\"></a></li>";

            }
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
        string power = admin.Value;
        string sql = "select * from admins where adminname='" + name + "' and password='" + password + "' and power='" + power + "'";

        DataSet ds = DBHelper.getDS(sql);

        int cnt = ds.Tables[0].Rows.Count;
        if (cnt > 0)
        {

            HttpCookie cookie = new HttpCookie("aspcn");
            cookie.Value = username.Value;
            Response.AppendCookie(cookie);
            if (power == "1")
            {
                Response.Redirect("backindex.aspx");
            }
            else
            {
                Response.Redirect("main.aspx");
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
    protected void Submit1_ServerClick(object sender, EventArgs e)
    {

        if (Text1.Value.Equals(""))
        {
            Response.Write("<script>alert('请输入用户名！')</script>");
            return;
        }
        if (Text2.Value.Equals(""))
        {
            Response.Write("<script>alert('请输入密码！')</script>");
            return;
        }
        if (Text3.Value.Equals(""))
        {
            Response.Write("<script>alert('请再次输入密码！')</script>");
            return;
        }

        if (Text4.Value.Equals(""))
        {
            Response.Write("<script>alert('请输入电话！')</script>");
            return;
        }

        if (Text1.Value.Equals(""))
        {
            Response.Write("<script>alert('请输入地址！')</script>");
            return;
        }
        if (Text3.Value == Text2.Value)
        {
            string name = Text1.Value;
            string psd = Text2.Value;
            string psdagain = Text3.Value;
            string phone = Text4.Value;
            string place = Text5.Value;
            string sql = "insert into admins(adminname,password,power,phone,place) values('" + name + "','" + psdagain + "',0,'"+phone+"','"+place+"')";
            string sql1 = "insert into pson(personname,collected) values('" + name + "',0)";
            DBHelper.exeUpdate(sql);
            DBHelper.exeUpdate(sql1);
            Response.Write("<script>alert('注册成功！请登录');window.location='index.aspx';</script>");
        }
        else
        {
            Response.Write("<script>alert('两次密码不相同！请重新注册');window.location='index.aspx';</script>");
            return;
        }
    }
    
}

