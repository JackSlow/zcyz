using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

/// <summary>
/// DBHelper 的摘要说明
/// </summary>
public class DBHelper
{
	public DBHelper()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}
    public static SqlConnection getConn()
    {
        string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        SqlConnection conn = new SqlConnection(connStr);
        return conn;
    }
    public static DataSet getDS(string sql)
    {
        SqlConnection con = getConn();
        SqlDataAdapter da = new SqlDataAdapter(sql, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }
    public static int exeUpdate(string sql)
    {
        int n = 0;
        SqlConnection con = getConn();
        try
        {
            SqlCommand cmd = new SqlCommand(sql, con);
            con.Open();
            n = cmd.ExecuteNonQuery();
        }
        finally
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
        }
        return n;
    }
    public static DataTable GetDataSet(string sql, params SqlParameter[] values)
    {
        SqlConnection con = getConn();
        con.Open();
        DataSet ds = new DataSet();
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddRange(values);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        return ds.Tables[0];
        con.Close();
    }
}
