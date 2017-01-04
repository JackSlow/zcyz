<%@ Page Language="C#" AutoEventWireup="true" CodeFile="latest.aspx.cs" Inherits="latest" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>star town</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	<meta name="author" content="FREEHTML5.CO" />

  <!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<!-- Google Webfonts -->
	<link href='http://fonts.useso.com/css?family=Roboto:400,300,100,500' rel='stylesheet' type='text/css'>
	<link href='http://fonts.useso.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
 <link rel="stylesheet" href="css/font-awesome.min.css">
	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">
	<!-- Salvattore -->
	<link rel="stylesheet" href="css/salvattore.css">
	<!-- Theme Style -->
	<link rel="stylesheet" href="css/second.css">
	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
    <script src="js/jquery.min.js"></script>
	<script src="js/jquery.flexslider.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
     <script>
		$(function  () {
			//滚动时导航栏颜色变化
			$(window).scroll(function () {
				if($(document).scrollTop()>10){
					$('.top-bg').fadeIn(300);
				}else{
					$('.top-bg').fadeOut(300);
				}
			});
			//侧边栏收缩展开
			$(".btn-sidebar").click(function(){
				$(".sidebar").animate({right:"0"});
				$(".overlay").fadeIn("slow");
			})
			$(".btn-close,.overlay").click(function(){
				$(".sidebar").animate({right:"-300px"});
				$(".overlay").fadeOut("slow");
			});
			})
     
     </script>
     
</head>
<body>
    <form id="form1" runat="server">
    <div>

	<div class="top">
			<header>
				<a class="logo" href="#" style="font-weight:bold">star town</a>
				<a class="btn-sidebar" href="javascript:;">
					<span></span>
					<span></span>
					<span></span>
				</a>
				<nav>
					<ul>
						<li><a href="main.aspx" class="nav-link">首页</a></li>
						<li><a href="latest.aspx" class="nav-link">最新</a></li>
						<li><a href="type.aspx" class="nav-link">类别</a></li>
					</ul>
				</nav>
			</header>
			<div class="top-bg"></div>
    
		</div>
	
    <div class="sidebar">
		<a class="btn-close" href="javascript:;">✕</a>
		<div class="avatar"><a href="person.aspx"><img src="images/username.jpg"/></a></div>
		<div class="info">
			<input type="text" id="txtname" value="田馥甄" style="  margin-top: 2em;border-bottom: 1px solid#484856;font-weight: 100;border: none;background: url(../images/adm.png) no-repeat 10px 15px;outline: none;color: #9199aa;padding: 1em 2em 1em 3em;width: 220px;font-size:28px; height:5px; margin-bottom:20px;" runat="server"/>
			<span>welcome to star town</span>
			<input type="text" id="persid" runat="server" style="display:none;"/>
		</div>
		<div class="contact">
		<%=collected %>
			<%--<p><a href="#"><i class="fa fa-star"></i>  收藏 (10)</a></p>--%>
            
		</div>
		<div class="links">
			<a href="index.aspx" target="_blank">退出</a>
		</div>
	</div>
	<div id="pop">
		<a href="javascript:;" class="pop-close">✕</a>
		<img src="" alt="" class="pop-img"/>
		<span class="pop-title"></span>
	</div>
	<div class="overlay" style="display:none;"></div>
    
    

	<div id="fh5co-main">
		<div class="container">

			<div class="row">

        <div id="fh5co-board" data-columns>
            <%=newList %>
        	<%--<div class="item">
        		<div class="animate-box">
	        		<a href="images/img_1.jpg" class="image-popup fh5co-board-img" title="Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, eos?"><img src="images/img_1.jpg" alt="Free HTML5 Bootstrap template"></a>
        		</div>
        		<div class="fh5co-desc">迷雾、清晨<br />Veniam voluptatum voluptas<br /><a href="#" style="width:70px; height:32px; display:block; float:left; margin-top:25px"><i class="fa fa-heart" style="color:#F00;"></i>  收藏</a><a href="#" style="width:70px; height:32px; display:block; float:left; margin-top:25px; color:#999"><i class="fa fa-upload"></i>  下载</a></div>
        	</div>
        	--%>
        </div>
        </div>
       </div>
	</div>

	<footer>
			<p>welcome to star town</p>
			<span>lxh,zcyz © 2016 </span>
		</footer>


	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<!-- Salvattore -->
	<script src="js/salvattore.min.js"></script>
	<!-- Main JS -->
	<script src="js/main.js"></script>

	

	
	
    </div>
    </form>
</body>
</html>
