<%@ Page Language="C#" AutoEventWireup="true" CodeFile="image.aspx.cs" Inherits="image" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en" xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <meta charset="utf-8"/>
    <title>后台</title>
  
    <meta name="description" content=""/>
    <meta name="author" content=""/>

    <!-- Le styles -->
    <link href="css/bootstrap.css" rel="stylesheet"/>
    <link href="css/bootstrap-responsive.css" rel="stylesheet"/>
    <link href="css/stylesheet.css" rel="stylesheet"/>
    <link href="css/index.css" rel="stylesheet"/>
    <link href="icon/font-awesome.css" rel="stylesheet"/>
    <style>
     input[type$="checkbox"]{width: 20px;height: 20px;}
    </style>

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
                          
                           <span>图片管理</span>
                            <%--<a  href="#" class="label label-warning" style="float:right; margin:8px;">下载</a>--%>
                            <%-- <input type="button" value="删除" id="del" runat="server" onserverclick="del_ServerClick" style="float:right;background-color: #ff8f32;color: #ffffff;cursor: pointer; border:0; margin-left:83%; height:22px; margin-bottom:4px;" />--%>
                           <%--<a  href="#" class="label label-warning" style="float:right; margin:8px;">删除</a>--%>
                           
                             
                             
                              <a  href="addadmin.aspx" class="label label-warning"  onserverclick="del_ServerClick" style="float:right;  margin:8px;" runat="server">删除</a>
                              <a  href="addimage.aspx" class="label label-warning" style="float:right; margin:8px;">添加</a>
                            
                         </div>
                        <div class="well brown">
                            
                           
                            <div class="well-content" style="border:0px;">
                                <table class="table table-striped table-bordered table-hover datatable">
                                    <thead>
                                        <tr>
                                            <th width="10%">选择</th>
                                            <th width="20%">图片</th>
                                            <th width="15%">图片名称</th>
                                            <th width="15%">类型</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%=allList %>
                                        <%--
                                        <tr>
                                            <td><input name="" type="checkbox" value="" ></td>
                                            <td><img src="images/xltfn.png" width="182" height="102"></td>
                                            <td>神奇宝贝</td>
                                            <td>动漫</td>
                                        </tr>
                                        --%>                                      
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

            
            </div>
        </div>
    </div>

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery-1.10.2.js"></script>
    <script src="js/jquery-ui-1.10.3.js"></script>
    <script src="js/bootstrap.js"></script>

    <script src="js/library/jquery.collapsible.min.js"></script>
    <script src="js/library/jquery.mCustomScrollbar.min.js"></script>
    <script src="js/library/jquery.mousewheel.min.js"></script>
    <script src="js/library/jquery.uniform.min.js"></script>

   
    <script src="js/library/jquery.sparkline.min.js"></script>
    <script src="js/library/chosen.jquery.min.js"></script>
    <script src="js/library/jquery.easytabs.js"></script>
    <script src="js/library/flot/excanvas.min.js"></script>
    <script src="js/library/flot/jquery.flot.js"></script>
    <script src="js/library/flot/jquery.flot.pie.js"></script>
    <script src="js/library/flot/jquery.flot.selection.js"></script>
    <script src="js/library/flot/jquery.flot.resize.js"></script>
    <script src="js/library/flot/jquery.flot.orderBars.js"></script>
    <script src="js/library/maps/jquery.vmap.js"></script>
    <script src="js/library/maps/maps/jquery.vmap.world.js"></script>
    <script src="js/library/maps/data/jquery.vmap.sampledata.js"></script>
    <script src="js/library/jquery.autosize-min.js"></script>
    <script src="js/library/charCount.js"></script>
    <script src="js/library/jquery.minicolors.js"></script>
    <script src="js/library/jquery.tagsinput.js"></script>
    <script src="js/library/fullcalendar.min.js"></script>
    <script src="js/library/footable/footable.js"></script>
    <script src="js/library/footable/data-generator.js"></script>

    <script src="js/library/bootstrap-datetimepicker.js"></script>
    <script src="js/library/bootstrap-timepicker.js"></script>
    <script src="js/library/bootstrap-datepicker.js"></script>
    <script src="js/library/bootstrap-fileupload.js"></script>
    <script src="js/library/jquery.inputmask.bundle.js"></script>

    <script src="js/library/jquery.dataTables.js"></script>

    <script src="js/flatpoint_core.js"></script>

    <script src="js/datatables.js"></script>

  
    </div>
    </form>
</body>
</html>
