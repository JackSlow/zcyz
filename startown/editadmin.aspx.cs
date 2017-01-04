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

public partial class editadmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string id = Request.QueryString["id"];
            if (id == null)
            {
                Response.Write("<script>alert('没有此用户！');window.location='admin.aspx';</script>");
            }
            else
            {
                string sql = "select * from admins where id=" + id;
                DataSet ds = DBHelper.getDS(sql);
                int cnt = ds.Tables[0].Rows.Count;
                if (cnt == 0)
                {
                    Response.Write("<script>alert('没有此用户');</script>");
                    Response.Redirect("admin.aspx");
                }
                else
                {
                    Text1.Value = ds.Tables[0].Rows[0]["adminname"].ToString();
                    Text2.Value = ds.Tables[0].Rows[0]["password"].ToString();
                    txt_power.Value= ds.Tables[0].Rows[0]["power"].ToString();
                }
            }
        }
    }
    protected void Submit1_ServerClick(object sender, EventArgs e)
    {
        string id = Request.QueryString["id"];
        int pow =Convert.ToInt16(Request.Form["ql"]) ;
        string sql = "update admins set adminname='" + Text1.Value + "',password='" + Text2.Value + "',power=" + pow + " where id=" + id;
        DBHelper.exeUpdate(sql);
        Response.Write("<script>alert('修改成功');window.location='admin.aspx';</script>");
    }
}
