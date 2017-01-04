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

public partial class type : System.Web.UI.Page
{
    public string sortList = "";
    //public string collected = "";
    public string types = "";
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

            string sql2 = "select * from pson where personname like'" + txtname.Value + "'";
            DataTable dt = DBHelper.GetDataSet(sql2);
            if (dt.Rows.Count > 0)
            {
                txtname.Value = dt.Rows[0]["personname"].ToString();
                persid.Value = dt.Rows[0]["id"].ToString();

            }
            //Collected();
            typelist();
        }


        string action = Request.QueryString["action"];
        if (action == null)
        {
            //显示全部数据
            sortlist();

        }
        else
        {
            if (action.Equals("collect"))
            {
                //修改
                string curl = Request.QueryString["url"];
                collect(curl);
            }
        }

    }
    void sortlist()
    {
        string tid = Request.QueryString["typeid"];
        string sql = "";
        if (tid == null)
        {
            //全部电影
            sql = "select * from imglist";
        }
        else
        {
            sql = "select i.id,url,describe,typename from imglist i,types t where typeid=t.id and typeid=" + tid;
        }
        DataSet ds = DBHelper.getDS(sql);

        int cnt = ds.Tables[0].Rows.Count;
        for (int i = 0; i < cnt; i++)
        {
            string id = ds.Tables[0].Rows[i]["id"].ToString();

            string url = ds.Tables[0].Rows[i]["url"].ToString();
            string des = ds.Tables[0].Rows[i]["describe"].ToString();
            //string name = url.Substring(url.LastIndexOf("/") + 1, url.LastIndexOf(".") - url.LastIndexOf("/") - 1);//截取路径的最后文件名

            sortList += "<div class=\"col-md-3 gallery-grid\"><a href=\"#\"><img src=\"" + url + "\" class=\"img-responsive\" alt=\"\"/>"
                    + "<div class=\"gallery-info\"><p><span class=\"glyphicon glyphicon-eye-open\" aria-hidden=\"true\"></span> view</p><a class=\"shop\" href=\"" + url + "\" rel=\"lightbox\" title=\"\">进入查看</a><div class=\"clearfix\"> </div></div></a>"
                    + "<div class=\"galy-info\"><p ><a href=\"type.aspx?action=collect&url=" + url + "\" style=\"margin-left:200px; color:Red\" ><i class=\"fa fa-heart\"></i></a><a href=\"down.aspx?filename=" + url + "\" style=\"margin-left:200px;margin-left:20px;\" ><i class=\"fa fa-download\"></i></a></p></div></div>";
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
    void collect(string curl)
    {
        string peid = persid.Value;
        string sql1 = "insert into collect(colurl,psonid) values('" + curl + "','" + peid + "') ";
        DBHelper.exeUpdate(sql1);
        string sql4 = "UPDATE pson SET collected = collected+1 WHERE id=" + peid;
        DBHelper.exeUpdate(sql4);
        Response.Write("<script>alert('收藏成功！');window.location='type.aspx';</script>");
    }
    //void Collected()
    //{
    //    string peid = persid.Value;
    //    string sql = "select * from pson where id=" + peid;
    //    DataSet ds = DBHelper.getDS(sql);
    //    int cnt = ds.Tables[0].Rows.Count;
    //    for (int i = 0; i < cnt; i++)
    //    {
    //        string cled = ds.Tables[0].Rows[i]["collected"].ToString();
    //        collected += "<p><a href=\"#\"><i class=\"fa fa-star\"></i>  收藏 (" + cled + ")</a></p>";
    //    }
    //}
}