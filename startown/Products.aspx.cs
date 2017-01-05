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

public partial class Products : System.Web.UI.Page
{
  
    public string types = "";
    public string photoList = "";
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

        if (!IsPostBack)
        {

            string sql2 = "select * from admins where adminname like'" + txtname.Value + "'";
            DataTable dt = DBHelper.GetDataSet(sql2);
            if (dt.Rows.Count > 0)
            {
                txtname.Value = dt.Rows[0]["adminname"].ToString();
                persid.Value = dt.Rows[0]["id"].ToString();

            }
            //Collected();
            typelist();
        }


        string action = Request.QueryString["action"];
        if (action == null)
        {
            //显示全部数据
            typelist();
            sortlist();

        }
        else
        {
            if (action.Equals("shop"))
            {
                //修改
                string surl = Request.QueryString["surl"];
                shop(surl);
            }
        } 
    } 
        void sortlist()
       {
       
        string sql = "select * from photo ";
        DataSet ds = DBHelper.getDS(sql);

        int cnt = ds.Tables[0].Rows.Count;
        for (int i = 0; i < cnt; i++)
        {
            string id = ds.Tables[0].Rows[i]["id"].ToString();

            string stitle = ds.Tables[0].Rows[i]["stitle"].ToString();
            string shopurl = ds.Tables[0].Rows[i]["surl"].ToString();
            string price = ds.Tables[0].Rows[i]["price"].ToString();
            //string name = url.Substring(url.LastIndexOf("/") + 1, url.LastIndexOf(".") - url.LastIndexOf("/") - 1);//截取路径的最后文件名

            photoList += "<div class=\"product-grid\"><a href=\"single.aspx?id=" + id + "\"><div class=\"more-product\"><span> </span></div><div class=\"product-img b-link-stripe b-animate-go  thickbox\">"
                      + "	<img src=\"" + shopurl + "\" class=\"img-responsive\" alt=\"\"><div class=\"b-wrapper\"><h4 class=\"b-animate b-from-left  b-delay03\"><button>View</button></h4></div></div></a>"
                      + "<div class=\"product-info simpleCart_shelfItem\"><div class=\"product-info-cust prt_name\"><h4><a href=\"Products.aspx?action=shop&surl=" + shopurl + "\">" + stitle + "</a></h4><span class=\"item_price\">$" + price + "</span>"
                      + "<div class=\"ofr\"><p class=\"pric1\"><del></del></p><p class=\"disc\"></p></div><div class=\"clearfix\"> </div></div></div></div>";
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

    void shop(string surl)
    {
        string peid = persid.Value;
        string sql1 = "insert into shop(surl,stypeid,shoped) values('" + surl + "','" + peid + "',0) ";
        DBHelper.exeUpdate(sql1);
        string sql4 = "UPDATE shop SET shoped = shoped+1 WHERE id=" + peid;
        DBHelper.exeUpdate(sql4);
        
        Response.Write("<script>window.location='single.aspx?surl="+surl+"';</script>");
        
    }
 }

