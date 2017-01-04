<%@ Page Language="C#" AutoEventWireup="true" CodeFile="backindex.aspx.cs" Inherits="backindex" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en" xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <meta charset="utf-8"/>
    <title>图片管理后台</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>

    <!-- Le styles -->
    <link href="css/bootstrap.css" rel="stylesheet"/>
    <link href="css/bootstrap-responsive.css" rel="stylesheet"/>
    <link href="css/stylesheet.css" rel="stylesheet"/>
    <link href="css/index.css" rel="stylesheet"/>
    <link href="icon/font-awesome.css" rel="stylesheet"/>

                                

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
    <![endif]-->

    

    <script>
    function getclassname(obj){
		if(document.getElementsByClassName('link_onclick').length==0){
			obj.className='link_onclick';
			obj.id='link_onclick';
			}else{
				var obj1=document.getElementById('link_onclick');
				obj1.className='111';
				obj1.id='1';
				obj.className='link_onclick';
			   obj.id='link_onclick';
				
			
			}

		
		}
    </script>
  </head>
<body>
    <form id="form1" runat="server">
    <div>
    

    <header class="dark_grey" >
     <!-- Header start -->
    <div class="top" style="background:#333;">
        <div class="logo" style="font-size:36px;text-align:center;line-height:70px;color:#FFF">图片后台管理</div>
         <div class="login">
            <a href="index.aspx"><img src="image/login.png"  /></a>
        </div>
        <div class="username">
           Hi <input type="text" id="txtname" runat="server" style="border:0; background:#333;"/>
        </div>
        <div class="user">
            <img src="image/user.png" />
        </div>
    </div> 
    </header>

    <div id="main_navigation" class="dark_navigation"> <!-- Main navigation start -->
        <div class="inner_navigation" >

            <ul class="main" >
                <li ><a class="expand"  href="dashboard.html"><i class="icon-home"></i>&nbsp;&nbsp;用户管理</a>
                    <ul class="sub_main" style="background-color: #222222;">
                          <li><a href="admin.aspx" target="right" onClick="getclassname(this)">用户管理&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font style="float:right;font-size:20px;">></font></a></li>
                    </ul>
                </li>
                <li>
                    <a href="image.aspx" target="right" onClick="getclassname(this)"><i class="icon-reorder"></i>&nbsp;&nbsp;图片管理</a>
                </li>
                <li><a href="backtype.aspx"  target="right" onClick="getclassname(this)"><i class="icon-tasks"></i>&nbsp;&nbsp;类型管理</a>
                   
                </li>   
            </ul>
        </div>
    </div>

    <div id="content" class="no-sidebar">
     <!-- Content start -->
        <iframe  class="inner_navigation1" name="right"  src="image.aspx" frameborder="0" width="100%" scrolling="auto" height="100%"></iframe>
           <!-- Content END --> 
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

    
    <script src="js/flatpoint_core.js"></script>

    <script>
        jQuery('#vmap').vectorMap({
            map:"world_en",
            backgroundColor:null,
            color:"#ffffff",
            hoverOpacity:.7,
            selectedColor:"#2d91ef",
            enableZoom:0,
            showTooltip:1,
            values:sample_data,
            scaleColors:["#8cc3f6","#5c86ac"],
            normalizeFunction:"polynomial",
            onRegionClick:function(){alert("This Region has "+(Math.floor(Math.random()*10)+1)+" users!"
            )}
        });

        jQuery(document).ready(function($) {
            $('.footable').footable();
            $('.responsive_table_container').mCustomScrollbar({
                set_height: 400,
                advanced:{
                  updateOnContentResize: true,
                  updateOnBrowserResize: true
                }
            });

            $('.responsive_table_container_2').mCustomScrollbar({
                set_height: 520,
                advanced:{
                  updateOnContentResize: true,
                  updateOnBrowserResize: true
                }
            });
        });
    </script>

    <script src="js/calendar.js"></script>
    <script src="js/forms.js"></script>
    <script src="js/dashboard.js"></script>
    
  
    </div>
    </form>
</body>
</html>
