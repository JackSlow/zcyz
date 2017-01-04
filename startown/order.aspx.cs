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

public partial class order : System.Web.UI.Page
{
    //public string pic = "";
    public string types = "";
    public string orders = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        shop();
        typelist();
    }
    void shop()
    {
        string surl = Request.QueryString["url"];

        string sql = "select * from photo where surl like'" + surl + "'";
        DataSet ds = DBHelper.getDS(sql);
        int cnt = ds.Tables[0].Rows.Count;
        for (int i = 0; i < cnt; i++)
        {
            string url = ds.Tables[0].Rows[i]["surl"].ToString();

            //pic = "<div class=\"tupian\" style=\" width:120px; height:120px; margin-top:14px; margin-left:15px; border:1px solid #999999; float:left\"><img src=\""+url+"\" alt=\"\" style=\"width:100%; height:100%\" /></div>";
            orders += "<div id=\"box\" style=\"height:150px; width:100%; border:1px solid #999999;\"><div class=\"tupian\" style=\" width:120px; height:120px; margin-top:14px; margin-left:15px; border:1px solid #999999; float:left\">"
             + " <img src=\"" + url + "\" alt=\"\" style=\"width:100%; height:100%\" /></div><p style=\"margin-top:14px; text-indent:20px\">ddd</p><p style=\"margin-top:7px; text-indent:20px\">rfgffg</p><p style=\"margin-top:7px; text-indent:20px\">rfgffg</p>"
			  +"<p style=\"margin-top:7px; text-indent:20px\">rfgffg</p></div>";
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
