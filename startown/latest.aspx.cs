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

public partial class latest : System.Web.UI.Page
{
    public string newList = "";
    public string collected = "";
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
            Collected();
        }
       

        string action = Request.QueryString["action"];
        if (action == null)
        {
            //显示全部数据
            newlist();
            
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
    void newlist()
    {
        string newSql = "select top 20 * from imglist order by uploadtime desc";
        DataSet ds = DBHelper.getDS(newSql);
        int cnt = ds.Tables[0].Rows.Count;
        for (int i = 0; i < cnt; i++)
        {
            string id = ds.Tables[0].Rows[i]["id"].ToString();
            string url = ds.Tables[0].Rows[i]["url"].ToString();
            string des = ds.Tables[0].Rows[i]["describe"].ToString();
            newList += "<div class=\"item\"><div class=\"animate-box\"><a href=\"images/img_2.jpg\" class=\"image-popup fh5co-board-img\">"
                   + "<img src=\"" + url + "\" alt=\"\"></a><div class=\"fh5co-desc\">" + des + "<br/>"
                    + "Veniam voluptatum voluptas<br/><a href=\"latest.aspx?action=collect&url=" + url + "\" style=\"width:70px; height:32px; display:block; float:left; margin-top:25px\">"
                    + "<i class=\"fa fa-heart\" style=\"color:#F00;\"></i>  收藏</a><a href=\"down.aspx?filename=" + url + "\" style=\"width:70px; height:32px; display:block; float:left; margin-top:25px; color:#999\">"
                    + "<i class=\"fa fa-download\"></i>  下载</a></div></div></div>";
        }
    }
    void collect(string curl)
    {
        string peid = persid.Value;
        string sql1 = "insert into collect(colurl,psonid) values('" + curl + "','" + peid + "') ";
        DBHelper.exeUpdate(sql1);
        string sql4 = "UPDATE pson SET collected = collected+1 WHERE id=" + peid;
        DBHelper.exeUpdate(sql4);
        Response.Write("<script>alert('收藏成功！');window.location='latest.aspx';</script>");
    }
    void Collected()
    { 
        string peid = persid.Value;
        string sql = "select * from pson where id=" + peid;
        DataSet ds = DBHelper.getDS(sql);
        int cnt = ds.Tables[0].Rows.Count;
        for (int i = 0; i < cnt; i++)
        {
            string cled = ds.Tables[0].Rows[i]["collected"].ToString();
            collected += "<p><a href=\"#\"><i class=\"fa fa-star\"></i>  收藏 (" + cled + ")</a></p>";
        }
    }
}
