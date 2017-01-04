<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addimage.aspx.cs" Inherits="addimage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en" xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <meta charset="utf-8">
    <title> 添加视频</title>
  
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/bootstrap-responsive.css" rel="stylesheet">
    <link href="css/stylesheet.css" rel="stylesheet">
    <link href="css/index.css" rel="stylesheet">
    <link href="icon/font-awesome.css" rel="stylesheet">
    

    <!-- Le fav and touch icons -->

                                  

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
    <![endif]-->
    
  </head>
<body style="background-color:#FFF !important; margin:20px;">
    <form id="form1" runat="server">
    <div>
    
  <div  class="daohanglink"style="">
                           <span class="daohang"></span>
                           <span>首页</span><span>></span>
                          
                           <span>图片管理</span><span>></span>
                            <span>添加图片</span>
                           <a  href="image.aspx" class="label label-warning" style="float:right; margin:8px;">返回</a>
   </div>
                        <div class="well brown">
                         <form action="#">
                            <div class="form_list"><label class="lable_title">图片名称</label><input class="form_input" type="text" id="imgname" runat="server"/></div>
                          
                            <div class="form_list"><label class="lable_title">图片类型</label>
                            <select name="tp" style="width:150px; margin-left:15px;">
                                <%=printTypes %>
                              <%--
                              <option>明星</option>
                              <option>动漫</option>
                              <option>游戏</option>
                              <option>风景</option>
                              <option>其他</option>
                              --%>
                            </select>
                            </div>
                          
                            <div class="form_list"><label class="lable_title">图片上传</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:FileUpload ID="FileUpload1" runat="server" /></div>
                            
                            <div class="form_list"><label class="lable_title">是否推荐</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="isrecommend" value="1">&nbsp;&nbsp;推荐&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="isrecommend" value="0">&nbsp;&nbsp;不推荐</div>
                            
                            <div class="form_list"><input type="submit" class="submit" value="&nbsp;&nbsp;提&nbsp;&nbsp;交&nbsp;&nbsp;" id="Submit1" runat="server" onserverclick="Submit1_ServerClick"></div>
                         </form>   
                           
                          
                        </div>
        <div id="c0" class="mrc" style="display: block;">

     <!--tabStyle-->
   
   </div>

  
    </div>
    </form>
</body>
</html>
