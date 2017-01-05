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

public partial class single : System.Web.UI.Page
{

    public string types = "";
    public string tu = "";
    public string jiagou = "";
    public string goumai = "";
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            string sql = "select * from pson where personname like'" + txtname.Value + "'";
            DataTable dt = DBHelper.GetDataSet(sql);
            if (dt.Rows.Count > 0)
            {
                txtname.Value = dt.Rows[0]["personname"].ToString();
                persid.Value = dt.Rows[0]["id"].ToString();

            }

            //displayImg();
            //collect();
            typelist();
            shop();
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
        string surl = Request.QueryString["surl"];

        string sql = "select * from photo where surl like'" + surl + "'";
        DataSet ds = DBHelper.getDS(sql);
        int cnt = ds.Tables[0].Rows.Count;
        for (int i = 0; i < cnt; i++)
        {
            string url = ds.Tables[0].Rows[i]["surl"].ToString();
           
            tu="<li data-thumb=\"images/s2.png\"><div class=\"thumb-image\"> <img src=\""+url+"\" data-imagezoom=\"true\" class=\"img-responsive\"> </div></li>";
            jiagou = "<a href=\"checkout.aspx?url=" + url + "\" class=\"add-cart item_add\">加入购物车</a>";
            goumai = "<a href=\"order.aspx?url=" + url + "\" class=\"add-cart item_add\">确认购买</a>";
        }
    }
   
}
