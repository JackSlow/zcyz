<%@ Page Language="C#" AutoEventWireup="true" CodeFile="deltype.aspx.cs" Inherits="deltype" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <meta charset="utf-8"/>
    <title>删除类型</title>
  
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
                           <span>类型管理</span><span>></span>
                           <span>删除类型</span>
                            <a  href="backtype.aspx" class="label label-warning" style="float:right; margin:8px;">返回</a>
                         </div>
                        <div class="well brown">
                         <form action="#">
                         类型名：<select name="typedel" id="typedel" style="width:280px;">
                          <%=tdel %>
                          <%--<option value="1">动漫</option>--%>
                          </select>
                            <div class="form_list"><input type="submit" class="submit" value="&nbsp;&nbsp;保&nbsp;&nbsp;存&nbsp;&nbsp;" id="Submit1" runat="server" onserverclick="Submit1_ServerClick" style="margin-top:10px;"/></div>
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
