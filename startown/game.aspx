<%@ Page Language="C#" AutoEventWireup="true" CodeFile="game.aspx.cs" Inherits="game" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //Custom Theme files -->
<link href="css/bootstrap2.css" type="text/css" rel="stylesheet" media="all">
<link href="css/style2.css" type="text/css" rel="stylesheet" media="all">
<link href="css/form.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/lightbox.css" type="text/css" media="screen" />
 <link rel="stylesheet" href="css/font-awesome.min.css"/>
<!-- js -->
<script src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
<!-- //js -->	
<!-- cart -->
<script src="js/simpleCart.min.js"> </script>
<!-- cart -->
<!-- the jScrollPane script -->
<script type="text/javascript" src="js/jquery.jscrollpane.min.js"></script>
		<script type="text/javascript" id="sourcecode">
			$(function()
			{
				$('.scroll-pane').jScrollPane();
			});
		</script>
<!-- //the jScrollPane script -->
<script type="text/javascript" src="js/jquery.mousewheel.js"></script>
<script type="text/javascript" src="js/prototype.js"></script>

<script type="text/javascript" src="js/scriptaculous.js?load=effects"></script>

<script type="text/javascript" src="js/lightbox.js"></script>

</head>
<body>
   <form id="form1" runat="server">
    	<div class="header">
		<div class="container">
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<h1 class="navbar-brand"><a  href="index.html">Find</a></h1>
				</div>
				<!--navbar-header-->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li><a href="main.aspx" class="active">首页</a></li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">摄影<b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-4">
								<div class="row">
									<div class="col-sm-3">
										<img src="images/sheying.jpg" width="100%" style="height: 185px">
									</div>																		
									<div class="col-sm-3">
										<h4>摄影</h4>
										<ul class="multi-column-dropdown">
											
											<li><a class="list" href="products.html">摄影技巧</a></li>
											<li><a class="list" href="products.html">摄影大赛</a></li>
											<li><a class="list" href="products.aspx">摄影器材</a></li>

										</ul>
									</div>


								</div>
							</ul>
						</li>
					   <li class="dropdown grid">
							<a href="#" class="dropdown-toggle list1" data-toggle="dropdown">分类<b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-4">
								<div class="row">
									<div class="col-sm-3">
										<img src="images/fenlei.jpg" width="100%"  style="height: 216px">
									</div>																		
									<div class="col-sm-3">
										<h4>作品分类</h4>
										<ul class="multi-column-dropdown">
										
		                                    <%=types %>
										
										</ul>
									</div>


								</div>
							</ul>
						</li>				


					</ul> 
					<!--/.navbar-collapse-->
				</div>
				<!--//navbar-header-->
			</nav>
			<div class="header-info">

				<div class="header-right login">
					<a href="person.aspx"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a>
					<div id="loginBox">                
						
					</div>
				</div>
				<div class="header-right cart">
					<a href="#"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span></a>
					<div class="cart-box">
						<h4><a href="checkout.aspx">
							<span class="simpleCart_total"> ¥0.00 </span> (<span id="simpleCart_quantity" class="simpleCart_quantity"> 0 </span>)
						</a></h4>
						<p><a href="checkout.aspx" class="simpleCart_empty">购物车</a></p>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--//header-->
	
	<!--gallery-->
	<div class="gallery">

		<div class="container">

			<h2 style="font-family: '幼圆'">摄影大赛</h2>
			<img src="images/photo_contest.jpg" style="margin-top:20px">
			<p style="text-indent:20px; margin-top:30px; line-height:50px;">一年一度的美国《国家地理》全球摄影大赛（中国赛区）已经拉开帷幕。这场延续十年之久的视觉盛宴，既是摄影爱好者挥洒灵感的华丽舞台，更是老朋友们期盼已久的温馨聚会。<br />
			赛事从5月1日启动至今，在不到一个月的时间里赛事组委会已收到大量优秀的作品，每一张照片的背后，都有不为人知的付出令我们动容。包罗万象的图片中包含着拍摄者无限的创作灵感与热情，他们用手中的相机或手机，捕捉最难忘的动人瞬间，探索最奇妙的大千世界。<br />
			在目前的参赛作品中，不同风格、不同视角的精彩画面层出不穷，自然的壮丽、人文的深邃、地方的风貌，都定格在他们的镜头之下，凝聚成美不胜收的影像长诗。通过他们的作品，我们感受着每一位摄影师的所思、所想、所望。<br />
			每一种美，都需要眼睛去发掘，需要镜头的纪录，而每个人都可以成为美的缔造者，在这场摄影界的盛事中，您可以与更多摄影爱好者分享、交流、进步，找到摄影带给自己的最单纯的快乐，一起体验摄影改变世界的力量。<br />
			美国《国家地理》全球摄影大赛中国赛区曾将无数精彩绝伦的画面呈现给世人，从即日起，我们也将定期向大家推荐大赛中的精彩佳作，即使无法亲临，镜头另一端的精彩也能让您瞬间感动和惊艳。<br />
			下面，我们首先精选了美国《国家地理》全球摄影大赛（中国赛区）5月份的部分参赛作品与大家一同分享，准备好一饱眼福吧！<br />
            最后，还要再次提醒各位摄影爱好者们，本次大赛作品征集时间从5月1日至8月31日，设置自然、地方、人物三大类别，并特设“vivo手机专区”。看完了别人的精彩作品，你是不是也跃跃欲试了呢，赶快登陆大赛专题页面<span style="color:Red"><a href="" style=" color:Red; text-decoration:none">http://www.nationalgeographic.com.cn/photography/photocontest/2015/</a></span>，上传自己的得意之作。<br />
            精彩十年，镜请参与！
            
			

			
			</p>
		</div>
	</div>
	<!--//gallery-->
	
	<!--//subscribe-->
	<!--footer-->
	<div class="footer">
		<div class="mask"><img src="images/infinity.png" width="100px" height="100px" > </div>
        <div class="footer_1" >
			<ul>
				<li><a href="javascript:0">关于我们</a></li>
				<li><a href="javascript:0">联系我们</a></li>
				<li><a href="javascript:0">刊物下载</a> </li>
				<li><a href="javascript:0">商家合作</a> </li>
			</ul>
		</div>

	</div>
	<!--//footer-->
	<div class="footer-bottom">
		<div class="container">
			<p>Copyright &copy; 2016.Company name All rights reserved.</p>
		</div>
	</div>
       <input type="text" id="txtname" style="display:none" runat="server"/>
       <input type="text" id="persid" style="display:none" runat="server" />
       
    </form>
</body>
</html>