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

public partial class admin : System.Web.UI.Page
{
    public string printadmin;
    protected void Page_Load(object sender, EventArgs e)
    {
        string action = Request.QueryString["action"];
        if (action == null)
        {
            string sql = "select * from admins";
            displayadmin(sql);
        }
        else
        {
            if (action.Equals("del"))
            {
                string id = Request.QueryString["id"];
                del(id);
            }

        }
    }
    void displayadmin(string sql)
    {
        DataSet ds = DBHelper.getDS(sql);
        int cnt = ds.Tables[0].Rows.Count;
        for (int i = 0; i < cnt; i++)
        {
            string id = ds.Tables[0].Rows[i]["id"].ToString();
            string name = ds.Tables[0].Rows[i]["adminname"].ToString();
            string psw = ds.Tables[0].Rows[i]["password"].ToString();
            string pow = ds.Tables[0].Rows[i]["powername"].ToString();
            printadmin += "<tr><td>" + id + "</td><td>" + name + "</td><td>" + psw + "</td><td>" + pow + "</td><td>"
                    + "<a class=\"btn\" href=\"editadmin.aspx?id=" + id + "\" title=\"修改\"><i class=\"icon-inbox\"></i></a><a class=\"btn\" href=\"admin.aspx?action=del&id=" + id + "\" title=\"删除\"><i class=\"icon-trash\"></i></a></td></tr>";
        }
    }
    void del(string id)
    {
        string sql1 = "DELETE FROM admins WHERE id=" + id;
        DBHelper.exeUpdate(sql1);
        Response.Write("<script>window.location='admin.aspx';</script>");
    }
}
