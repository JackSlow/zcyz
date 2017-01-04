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

public partial class deltype : System.Web.UI.Page
{
    public string tdel = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        type();
    }
    void type()
    {
        string sql = "select * from types";
        DataSet ds = DBHelper.getDS(sql);
        int cnt = ds.Tables[0].Rows.Count;
        for (int i = 0; i < cnt; i++)
        {
            string id = ds.Tables[0].Rows[i]["id"].ToString();
            string name = ds.Tables[0].Rows[i]["typename"].ToString();
            tdel += "<option value=\"" + id + "\">" + name + "</option>";
        }
    }
    protected void Submit1_ServerClick(object sender, EventArgs e)
    {
        string tid = Request.Form["typedel"];
        string sql = "DELETE FROM types WHERE id=" + tid + "";
        int n = DBHelper.exeUpdate(sql);
        if (n == 1)
        {
            Response.Write("<script>alert('删除成功');window.location='backtype.aspx';</script>");
        }
    }

}