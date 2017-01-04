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

public partial class image : System.Web.UI.Page
{
    public string allList = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        alllist();
    }

    void alllist()
    {
        string sql = "select m.id,url,describe,uploadtime,typename from types t,imglist m where t.id=m.typeid order by m.uploadtime desc";
        DataSet ds = DBHelper.getDS(sql);
        int cnt = ds.Tables[0].Rows.Count;
        for (int i = 0; i < cnt; i++)
        {
            string id = ds.Tables[0].Rows[i]["id"].ToString();
            string url = ds.Tables[0].Rows[i]["url"].ToString();
            string des = ds.Tables[0].Rows[i]["describe"].ToString();
            string tp = ds.Tables[0].Rows[i]["typename"].ToString();
            allList += "<tr><td><input type=\"checkbox\" name=\"check\" value=\"" + id + "\"/></td><td><img src=\"" + url + "\" width=\"182\" height=\"102\"></td><td>" + des + "</td><td>" + tp + "</td></tr>";

        }
    }
    //多条删除
    protected void del_ServerClick(object sender, EventArgs e)
    {
        string id = Request.Form["check"];
        string sql = "DELETE FROM imglist WHERE id in(" + id + ")";
        int n = DBHelper.exeUpdate(sql);
        if (n > 0)
        {
            Response.Write("<script>alert('删除成功');window.location='image.aspx';</script>");
        }
    }
}
