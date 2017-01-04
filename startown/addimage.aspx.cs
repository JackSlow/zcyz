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

public partial class addimage : System.Web.UI.Page
{
    public string printTypes = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        displayTypes();
    }
    void displayTypes()//类型
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
    protected void Submit1_ServerClick(object sender, EventArgs e)
    {

        //图片上传
        Boolean fileOk = false;
        HttpCookie cookie = Request.Cookies["aspcn"];
        //string UserDirectory = Session["userName"].ToString();
        string UserDirectory = cookie.Value;
        string UserPath = Server.MapPath("images/" + UserDirectory + "");
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

        string descr = imgname.Value;
        string tid = Request.Form["tp"];
        string recom = Request.Form["isrecommend"];
        //int length = tid.Length;
        //tid = tid.Substring(0, length - 1);
        string imgpath = "images/" + UserDirectory + "/" + FileUpload1.FileName;
        string onlinetime = DateTime.Now.ToString();//获取上传时间

        string sql = "insert into imglist(url,uploadtime,describe,typeid,isrecommend) values('" + imgpath + "','" + onlinetime + "','" + descr + "','" + tid + "','" + recom + "')";
        DBHelper.exeUpdate(sql);
        Response.Write("<script>window.location='image.aspx';</script>");
    }
}

