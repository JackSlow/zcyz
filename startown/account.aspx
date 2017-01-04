<%@ Page Language="C#" AutoEventWireup="true" CodeFile="account.aspx.cs" Inherits="account" %>

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
<!-- js -->
<script src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
<!-- //js -->	
<!-- cart -->
<script src="js/simpleCart.min.js"> </script>
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
						<li><a href="index.html" class="active">首页</a></li>
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
											<li><a class="list" href="products.html">每日一图</a></li>
											<li><a class="list" href="products.html">摄影技巧</a></li>
											<li><a class="list" href="products.html">摄影大赛</a></li>
											<li><a class="list" href="products.html">摄影器材</a></li>

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
											<li><a class="list" href="products.html">人文</a></li>
											<li><a class="list" href="products.html">动物</a></li>
											<li><a class="list" href="products.html">环境</a></li>
											<li><a class="list" href="products.html">旅行</a></li>

											<li><a class="list" href="products.html">科技</a></li>
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
					
						   <div id="loginForm">
							<fieldset id="body">
								<fieldset>
									<label for="password">密码</label>
									<input type="text" class="text" id="username" runat="server" placeholder="用户名" >
									
								</fieldset>
								<fieldset>
									<label for="password">密码</label>
									<input type="password" id="psd" runat="server" >
								</fieldset>
								<p style="font-size:18px; color:#999; display:block; float:left; margin-left:50px;">用户类型：</p><select id="admin" runat="server" style=" float:left; height:20px;"><option value="0">普通用户</option><option value="1">管理员</option></select>
								<input type="submit" id="login" value="登录"  >
								<label for="checkbox"><input type="checkbox" id="checkbox"> <i>记住密码</i></label>
							</fieldset>
							<p>新用户 ? <a class="sign" href="account.aspx">注册</a> <span><a href="#">忘记密码?</a></span></p>
						</div>
						
					</div>
				</div>
				<div class="header-right cart">
					<a href="#"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span></a>
					<div class="cart-box">
						<h4><a href="checkout.aspx">
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
	<!--account-->
	<div class="account">
		<div class="container">
			<div class="register">
				
					<div class="register-top-grid">
						<h3>注册信息</h3>
						<div class="black">
							<span>用户名<label>*</label></span>
							<input type="text" class="text"  id="Text1" runat="server" />
						</div>
						<div class="black">
							<span>电话<label>*</label></span>
							<input type="text"  runat="server" id="Text4" class="mobile"> 
						</div>
						
						<div class="black">
							<span>地址<label>*</label></span>
							<input type="text" runat="server" id="Text5"> 
						</div>
						<div class="black">
							<span>密码<label>*</label></span>
							<input type="password" id="Text2"   runat="server" style="width:690px; height:35px; border-color:#0000; text-indent:5px"/>
						</div>
						<div class="black">
							<span>确认密码<label>*</label></span>
							<input type="password" id="Text3" runat="server" style="width:690px; height:35px; border-color:#0000;text-indent:5px"/>
						</div>
						
						<div class="clearfix"> </div>
					</div>
				   
				
				<div class="clearfix"> </div>
				<div class="register-but">
				   
					   <input type="button" value="注册" id="Submit1" onserverclick="Submit1_ServerClick" runat="server" style="width:150px; height:50px; background:#fdd111; border:0; color:#ffffff"/>
					   <div class="clearfix"> </div>
				   
				</div>
			</div>
	    </div>
	</div>
	<!--//account-->
	<!--footer-->
	
	<!--footer-->
<footer>
			<p>welcome to star town</p>
			<span>lxh,zcyz © 2016 </span>
		</footer>
		
    </form>
    
</body>
</html>
