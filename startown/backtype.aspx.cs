﻿using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class backtype : System.Web.UI.Page
{
    public string types = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        typelist();
    }
    void typelist()
    {
        string sql = "select * from types";
        DataSet ds = DBHelper.getDS(sql);
        int cnt = ds.Tables[0].Rows.Count;
        for (int i = 0; i < cnt; i++)
        {
            string id = ds.Tables[0].Rows[i]["id"].ToString();
            string name = ds.Tables[0].Rows[i]["typename"].ToString();
            types += "<li><a href=\"#\"><img src=\"icon/folder.png\"><p>" + name + "</p></a></li>";
        }
    }
}

