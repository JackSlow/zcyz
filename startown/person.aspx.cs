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
using System.IO;

public partial class person : System.Web.UI.Page
{
    public string printTypes = "";
    public string printImg = "";
    public string printCollect = "";
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
        displayTypes();

        typelist();

        if (!IsPostBack)
        {
            string sql = "select * from admins where adminname like'" + txtname.Value + "'";
            DataTable dt = DBHelper.GetDataSet(sql);
            if (dt.Rows.Count > 0)
            {

                txtname.Value = dt.Rows[0]["adminname"].ToString();
                perid.Value = dt.Rows[0]["id"].ToString();
                
            }
            
            displayImg();
            collect();
            
           
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
    void displayTypes()//选择类型
    {

        DataSet ds = DBHelper.getDS("select * from types");
        int cnt = ds.Tables[0].Rows.Count;
        for (int i = 0; i < cnt; i++)
        {
            string id = ds.Tables[0].Rows[i]["id"].ToString();
            string name = ds.Tables[0].Rows[i]["typename"].ToString();
            printTypes += "<option value='" + id + "'>" + name + "</option>";
        }
    }
    void displayImg()
    {
        string id = perid.Value;
        string sql = "select * from imglist where psonid=" + id;
        DataSet ds = DBHelper.getDS(sql);
        int cnt = ds.Tables[0].Rows.Count;
        for (int i = 0; i < cnt; i++)
        {
            string url = ds.Tables[0].Rows[i]["url"].ToString();
            printImg += "<div class=\"b1\"><a href=\"#\"><img src=\"" + url + "\" width=\"300\" height=\"250\"/></a></div>";
        }
    }
    void collect()
    {
        string id = perid.Value;
        string sql = "select * from collect where psonid=" + id;
        DataSet ds = DBHelper.getDS(sql);
        int cnt = ds.Tables[0].Rows.Count;
        for (int i = 0; i < cnt; i++)
        {
            string url = ds.Tables[0].Rows[i]["colurl"].ToString();
            printCollect += "<div class=\"b2\"><a href=\"#\"><img src=\"" + url + "\" width=\"250\" height=\"250\"/></a></div>";

        }
    }

    protected void Button1_ServerClick(object sender, EventArgs e)
    {


        //1:图片上传
        Boolean fileOk = false;
        string UserDirectory = txtname.Value;
        string UserPath = Server.MapPath("img/" + UserDirectory + "");
        if (!System.IO.Directory.Exists(UserPath))
        {
            System.IO.Directory.CreateDirectory(UserPath);
            
        }
        //判断是否已经选取文件
        if (FileUpload1.HasFile)
        {
            //取得文件的扩展名,并转换成小写
            string fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName).ToLower();
            //限定只能上传jpg和gif图片
            string[] allowExtension = { ".jpg", ".gif", ".png", ".jpeg" };
            //对上传的文件的类型进行一个个匹对
            for (int i = 0; i < allowExtension.Length; i++)
            {
                if (fileExtension == allowExtension[i])
                {
                    fileOk = true;                    
                    break;
                }
            }
            if (!fileOk)
            {
                Response.Write("<script>alert('文件格式不正确');</script>");
                Response.Write("<script>window.location='person.aspx';</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('你还没有选择文件');</script>");
            Response.Write("<script>window.location='person.aspx';</script>");
        }
        //如果扩展名符合条件，则上传
        if (fileOk)
        {
            FileUpload1.PostedFile.SaveAs(UserPath + "\\" + FileUpload1.FileName);
        }
        string pid = perid.Value;//获取文本框内存放的个人表的id值
        string tid = Request.Form["tp"];
        int length = tid.Length;
        tid = tid.Substring(0, length - 1);
        string imgpath = "img/" + UserDirectory + "/" + FileUpload1.FileName;
        string onlinetime = DateTime.Now.ToString();//获取上传时间
        string descr = dec.Value;

        string sql = "insert into imglist(url,psonid,uploadtime,describe,typeid) values('" + imgpath + "','" + pid + "','" + onlinetime + "','" + descr + "','" + tid + "')";
        DBHelper.exeUpdate(sql);
        Response.Write("<script>window.location='person.aspx';</script>");
        
    }
}
