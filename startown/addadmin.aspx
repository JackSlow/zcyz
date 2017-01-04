<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addadmin.aspx.cs" Inherits="addadmin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en" xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <meta charset="utf-8"/>
    <title>添加用户</title>
  
    <meta name="description" content=""/>
    <meta name="author" content=""/>

    <!-- Le styles -->
    <link href="css/bootstrap.css" rel="stylesheet"/>
    <link href="css/bootstrap-responsive.css" rel="stylesheet"/>
    <link href="css/stylesheet.css" rel="stylesheet"/>
    <link href="css/index.css" rel="stylesheet"/>
    <link href="icon/font-awesome.css" rel="stylesheet"/>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    

    
    <div id="content"> <!-- Content start -->
      <div class="inner_content">
          <div class="widgets_area">
                <div class="row-fluid">
                    <div class="span12">
                         <div  class="daohanglink"style="">
                           <span class="daohang"></span>
                           <span>首页</span><span>></span>
                           <span>用户管理</span><span>></span>
                           <span>添加用户</span>
                            <a  href="admin.aspx" class="label label-warning" style="float:right; margin:8px;">返回</a>
                         </div>
                        <div class="well brown">
                         <form action="#">
                            <div class="form_list"><label class="lable_title">用&nbsp;&nbsp; 户&nbsp; 名</label><input class="form_input" type="text" id="Text1" runat="server"/></div>
                            <div class="form_list"><label class="lable_title">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码</label><input class="form_input" type="text" id="Text2" runat="server"/></div>
                            <div class="form_list"><label class="lable_title">确认密码</label><input class="form_input" type="text" id="Text3" runat="server"/></div>
              
  
                            <div class="form_list"><label class="lable_title">状&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;态</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="ql" value="2">&nbsp;&nbsp;用户&nbsp;&nbsp;&nbsp;<input type="radio" name="ql" value="1">&nbsp;&nbsp;普通管理员&nbsp;&nbsp;<input type="radio" name="ql" value="0">&nbsp;&nbsp;超级管理员</div>
                          
                            <div class="form_list"><input type="submit" class="submit" value="&nbsp;&nbsp;提&nbsp;&nbsp;交&nbsp;&nbsp;" id="Submit1" runat="server" onserverclick="Submit1_ServerClick"></div>
                         </form>   
                           
                          
                        </div>
                    </div>
                </div>

            
            </div>
        </div>
    </div>

    <!-- Le javascript
    ================================================== --><!-- Placed at the end of the document so the pages load faster -->
   <script src="js/jquery-1.10.2.js"></script>
    <script src="js/jquery-ui-1.10.3.js"></script>
    <script src="js/bootstrap.js"></script>

    <script src="js/flatpoint_core.js"></script>

  
    </div>
    </form>
</body>
</html>
