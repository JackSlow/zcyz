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

public partial class main : System.Web.UI.Page
{
     public string types = "";
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

            //string sql2 = "select * from pson where personname like'" + txtname.Value + "'";
            //DataTable dt = DBHelper.GetDataSet(sql2);
            //if (dt.Rows.Count > 0)
            //{
            //    txtname.Value = dt.Rows[0]["personname"].ToString();
            //    persid.Value = dt.Rows[0]["id"].ToString();

            //}
            //Collected();
            typelist();
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

}
