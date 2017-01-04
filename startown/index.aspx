<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
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
						<li><a href="index.aspx" class="active">首页</a></li>
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
										
											<li><a class="list" href="javascript:0">摄影技巧</a></li>
											<li><a class="list" href="javascript:0">摄影大赛</a></li>
											<li><a class="list" href="javascript:0">摄影器材</a></li>

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
											<li><a class="list" href="javascript:0">人文</a></li>
											<li><a class="list" href="javascript:0">动物</a></li>
											<li><a class="list" href="javascript:0">环境</a></li>
											<li><a class="list" href="javascript:0">旅行</a></li>

											<li><a class="list" href="javascript:0">科技</a></li>
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
					<a href="#"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a>
					<div id="loginBox">                
						<form>
						   <div id="loginForm">
							<fieldset id="body">
								<fieldset>
									<label for="password">密码</label>
									<input type="text" class="text" id="username" runat="server"  >
									
								</fieldset>
								<fieldset>
									<label for="password">密码</label>
									<input type="password" id="psd" runat="server" >
								</fieldset>
								<p style="font-size:18px; color:#999; display:block; float:left; margin-left:50px;">用户类型：</p><select id="admin" runat="server" style=" float:left; height:20px;"><option value="0">普通用户</option><option value="1">管理员</option></select>
									<input type="submit" value="登录" id="login" runat="server" onserverclick="login_ServerClick" />
								<label for="checkbox"><input type="checkbox" id="checkbox"> <i>记住密码</i></label>
							</fieldset>
							<p>新用户 ? <a class="sign" href="account.aspx">注册</a> <span><a href="#">忘记密码?</a></span></p>
						</div>
						</form>
					</div>
				</div>
				<div class="header-right cart">
					<a href="#"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span></a>
					<div class="cart-box">
						<h4><a href="checkout.html">
							<span class="simpleCart_total"> ¥0.00 </span> (<span id="simpleCart_quantity" class="simpleCart_quantity"> 0 </span>)
						</a></h4>
						<p><a href="checkout.html" class="simpleCart_empty">购物车</a></p>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--//header-->
	<!--banner-->
	<div class="banner">
		<img src="images/photo_contest.jpg">
	</div>			
	<!--//banner-->
    <div class="copyrights">Collect from <a href="http://www.cssmoban.com/" ></a></div>
	<!--gallery-->
	<div class="gallery">

		<div class="container">

			<div class="gallery-grids">
				<div class="col-md-8 gallery-grid glry-one">
					<a href="javascript:0">
						<img src="images/1.jpg" class="img-responsive" alt=""/>
					</a>
					<div class="galy-info">
						<p>每日一图 ：宁静岁月</p>

					</div>
				</div>
				<div class="col-md-8 gallery-grid glry-one">
					<a href="javascript:0">
						<img src="images/2.jpg" class="img-responsive" alt=""/>
					</a>
					<div class="galy-info">
						<p>每日一图 ：极地冰川</p>

					</div>
				</div>
				<div class="col-md-8 gallery-grid glry-one">
					<a href="javascript:0">
						<img src="images/3.jpg" class="img-responsive" alt=""/>
					</a>
					<div class="galy-info">
						<p>每日一图 ：幽蓝溪谷</p>

					</div>
				</div>
				<div class="col-md-8 gallery-grid glry-one">
					<a href="javascript:0">
						<img src="images/4.jpg" class="img-responsive" alt=""/>
					</a>
					<div class="galy-info">
						<p>每日一图 ：灯火祈福</p>

					</div>
				</div>
				<h3 style="line-height: 50px; text-indent: 15px; font-family:'黑体'"><span style="color:#D00000; font-size: 28px">☆</span>热门</h3>
				<div class="col-md-3 gallery-grid ">
					<a href="#"><img src="images/5.jpg" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="images/5.jpg" rel="lightbox" title="">进入查看</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>老人与海</p>

					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="#"><img src="images/6.jpg" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop"  href="images/6.jpg" rel="lightbox">进入查看</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>花中月</p>

					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="#"><img src="images/7.jpg" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop"  href="images/7.jpg" rel="lightbox">进入查看</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>传说</p>

					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="#"><img src="images/8.jpg" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop"  href="images/8.jpg" rel="lightbox">进入查看</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>山峦</p>

					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="#"><img src="images/9.jpg" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop"  href="images/9.jpg" rel="lightbox">进入查看</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>盛夏</p>

					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="#"><img src="images/10.jpg" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop"  href="images/10.jpg" rel="lightbox">进入查看</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>森林麋鹿</p>

					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="#"><img src="images/11.jpg" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop"  href="images/11.jpg" rel="lightbox">进入查看</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>山水之间</p>

					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="#"><img src="images/12.jpg" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="images/12.jpg" rel="lightbox">进入查看</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>浪</p>

					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="#"><img src="images/13.jpg" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop"  href="images/13.jpg" rel="lightbox">进入查看</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>雪山</p>

					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="#"><img src="images/14.jpg" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop"  href="images/14.jpg" rel="lightbox">进入查看</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>山</p>

					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="#"><img src="images/15.jpg" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop"  href="images/15.jpg" rel="lightbox">进入查看</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>心事</p>

					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="#"><img src="images/16.jpg" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="images/16.jpg" rel="lightbox">进入查看</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>心事</p>

					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="#"><img src="images/17.jpg" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop"  href="images/17.jpg" rel="lightbox">进入查看</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>心事</p>

					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="#"><img src="images/18.jpg" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop"  href="images/18.jpg" rel="lightbox">进入查看</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>心事</p>

					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="#"><img src="images/21.jpg" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="images/21.jpg" rel="lightbox">进入查看</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>心事</p>

					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="#"><img src="images/20.jpg" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="images/20.jpg" rel="lightbox">进入查看</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>心事</p>

					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="#"><img src="images/22.jpg" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="images/22.jpg" rel="lightbox">进入查看</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>心事</p>

					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="#"><img src="images/23.jpg" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop"  href="images/23.jpg" rel="lightbox">进入查看</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>心事</p>

					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="#"><img src="images/24.jpg" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop"  href="images/24.jpg" rel="lightbox">进入查看</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>心事</p>

					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="#"><img src="images/25.jpg" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="images/25.jpg" rel="lightbox">进入查看</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>心事</p>

					</div>
				</div>
			</div>	
		</div>
	</div>
	<!--//gallery-->
	<!--subscribe-->
	<div class="subscribe">
		 <div class="container">
			 <h3>Find</h3>
			 <form>
				 <input type="text" class="text" value="关键字" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Email';}">
				 <input type="submit" value="搜索">
			 </form>
		 </div>
	</div>
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
	<div id="gallery" style="display:none">
    <ul>
        <li>
            <a href="photos/image1.jpg" title="Utilize a flexibilidade dos seletores da jQuery e crie um grupo de imagens como desejar. $('#gallery').lightBox();">
                <img src="photos/thumb_image1.jpg" width="72" height="72" alt="" />
            </a>
        </li>
        <li>
            <a href="photos/image2.jpg" title="Utilize a flexibilidade dos seletores da jQuery e crie um grupo de imagens como desejar. $('#gallery a').lightBox();">
                <img src="photos/thumb_image2.jpg" width="72" height="72" alt="" />
            </a>
        </li>
        <li>
            <a href="photos/image3.jpg" title="Utilize a flexibilidade dos seletores da jQuery e crie um grupo de imagens como desejar. $('#gallery a').lightBox();">
                <img src="photos/thumb_image3.jpg" width="72" height="72" alt="" />
            </a>
        </li>
        <li>
            <a href="photos/image4.jpg" title="Utilize a flexibilidade dos seletores da jQuery e crie um grupo de imagens como desejar. $('#gallery a').lightBox();">
                <img src="photos/thumb_image4.jpg" width="72" height="72" alt="" />
            </a>
        </li>
        <li>
            <a href="photos/image5.jpg" title="Utilize a flexibilidade dos seletores da jQuery e crie um grupo de imagens como desejar. $('#gallery a').lightBox();">
                <img src="photos/thumb_image5.jpg" width="72" height="72" alt="" />
            </a>
        </li>
    </ul>
</div>
    </form>
</body>
</html>
