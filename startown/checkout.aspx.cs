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

public partial class _Default : System.Web.UI.Page
{
    public string types = "";
    public string jiagou = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie cookie = Request.Cookies["aspcn"];
        //if (cookie != null)
        //{
        //    txtname.Value = cookie.Value;
        //}
        //else
        //{
        //    Response.Write("<script>alert('请先登录或注册');window.location='index.aspx';</script>");
        //}

        if (!IsPostBack)
        {
            string surl = Request.QueryString["url"];
            string sql1 = "select * from photo where surl like'" + surl + "'";
            DataTable dt = DBHelper.GetDataSet(sql1);
            if (dt.Rows.Count > 0)
            {
                string id = dt.Rows[0]["id"].ToString();
                string sql2="UPDATE photo SET stypeid =1 WHERE id=" + id;
                DBHelper.exeUpdate(sql2);

            }
            //string sql2 = "select * from pson where personname like'" + txtname.Value + "'";
            //DataTable dt = DBHelper.GetDataSet(sql2);
            //if (dt.Rows.Count > 0)
            //{
            //    txtname.Value = dt.Rows[0]["personname"].ToString();
            //    persid.Value = dt.Rows[0]["id"].ToString();

            //}
            //Collected();
            typelist();
            shop();
        }


        string action = Request.QueryString["action"];
        if (action == null)
        {
            //显示全部数据
            typelist();

        }
        else
        {
            //if (action.Equals("collect"))
            //{
            //    //修改
            //    string curl = Request.QueryString["url"];
            //    collect(curl);
            //}
        }
    }
    void typelist()
    {
        string sql3 = "select * from types";
        DataSet ds = DBHelper.getDS(sql3);

        int cnt = ds.Tables[0].Rows.Count;
        for (int i = 0; i < cnt; i++)
        {
            string id = ds.Tables[0].Rows[i]["id"].ToString();
            string name = ds.Tables[0].Rows[i]["typename"].ToString();
            //types += "<li><a href=\"type.aspx?typeid=" + id + "\">" + name + "</a></li>";
            types += "<li><a class=\"list\" href=\"type.aspx?typeid=" + id + "\">" + name + "</a></li>";
        }
    }
    void shop()
    {
        //string surl = Request.QueryString["url"];

        string sql = "select * from photo where stypeid=" + 1 + "";
        DataSet ds = DBHelper.getDS(sql);
        int cnt = ds.Tables[0].Rows.Count;
        for (int i = 0; i < cnt; i++)
        {
            string url = ds.Tables[0].Rows[i]["surl"].ToString();
            string stitle = ds.Tables[0].Rows[i]["stitle"].ToString();
            string sort = ds.Tables[0].Rows[i]["sort"].ToString();
            string time = ds.Tables[0].Rows[i]["time"].ToString();
            string model = ds.Tables[0].Rows[i]["model"].ToString();
  
            jiagou += "<div class=\"cart-header\"><div class=\"close1\"> </div><div class=\"cart-sec simpleCart_shelfItem\"><div class=\"cart-item cyc\"><img src=\""+url+"\" class=\"img-responsive\" alt=\"\"></div>"
                    + "<div class=\"cart-item-info\"><h3><a href=\"#\">" + stitle + "</a><span>" + time + "</span></h3><ul class=\"qty\"><li><p>" + model + "</p></li><li><p>" + sort + "</p></li></ul>"
					+"<div class=\"delivery\"><p>Service Charges : $10.00</p><span>Delivered in 1-1:30 hours</span><div class=\"clearfix\"></div></div></div><div class=\"clearfix\"></div></div></div>";
        }
    }

}

