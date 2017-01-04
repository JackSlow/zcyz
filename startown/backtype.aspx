<%@ Page Language="C#" AutoEventWireup="true" CodeFile="backtype.aspx.cs" Inherits="backtype" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en" xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <meta charset="utf-8">
    <title>类型管理</title>
  
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/bootstrap-responsive.css" rel="stylesheet">
    <link href="css/stylesheet.css" rel="stylesheet">
    <link href="css/index.css" rel="stylesheet">
    <link href="icon/font-awesome.css" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="css/easyui.css">
  <link rel="stylesheet" type="text/css" href="css/icon.css">
  <link rel="stylesheet" type="text/css" href="../demo.css">
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/jquery.easyui.min.js"></script>
  
</script>
  </head>
<body>
    <form id="form1" runat="server">
    <div>
    

    
    <div id="content"> <!-- Content start -->
          <div class="widgets_area">
                <div class="row-fluid">
                    <div class="span12">
                         <div  class="daohanglink"style="">
                           <span class="daohang"></span>
                           <span>首页</span><span>></span>
                           <span>类型管理</span>
                         </div>
                    </div>
                    <ul class="wj">
                        <%=types %>
                      <%--<li><a href="#"><img src="icon/folder.png"><p>风景</p></a></li>--%>
                      
                       <li><a href="addtype.aspx" class="easyui-linkbutton"  ><img src="icon/add.png" /><p>添加</p></a></li>
                      <li><a href="deltype.aspx" class="easyui-linkbutton"><img src="icon/delete.png" /><p>删除</p></a></li>
                    </ul>
                </div>

            </div>
    </div>

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
   <script src="js/jquery-1.10.2.js"></script>
    <script src="js/jquery-ui-1.10.3.js"></script>
    <script src="js/bootstrap.js"></script>

    <script src="js/flatpoint_core.js"></script>
    


  
    </div>
    </form>
</body>
</html>

