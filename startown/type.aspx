<%@ Page Language="C#" AutoEventWireup="true" CodeFile="type.aspx.cs" Inherits="type" %>

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
											<%--<li><a class="list" href="type.aspx">人文</a></li>
											<li><a class="list" href="products.html">动物</a></li>
											<li><a class="list" href="products.html">环境</a></li>
											<li><a class="list" href="products.html">旅行</a></li>

											<li><a class="list" href="products.html">科技</a></li>--%>
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

			<div class="gallery-grids">
	
		       <%=sortList%>
				<%--<div class="col-md-3 gallery-grid ">
					<a href="#"><img src="images/5.jpg" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="images/5.jpg" rel="lightbox" title="">进入查看</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p > <a href="" style="margin-left:200px" ><i class="fa fa-download"></i></a><a href="" style=" margin-left:20px; color:Red"><i class="fa fa-heart"></i></a></p>
						
						
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
						<p><a href="" style="margin-left:200px" ><i class="fa fa-download"></i></a><a href="" style=" margin-left:20px; color:Red"><i class="fa fa-heart"></i></a></p>

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
					<p > <a href="" style="margin-left:200px" ><i class="fa fa-download"></i></a><a href="" style=" margin-left:20px; color:Red"><i class="fa fa-heart"></i></a></p>

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
						<p > <a href="" style="margin-left:200px" ><i class="fa fa-download"></i></a><a href="" style=" margin-left:20px; color:Red"><i class="fa fa-heart"></i></a></p>
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
						<p > <a href="" style="margin-left:200px" ><i class="fa fa-download"></i></a><a href="" style=" margin-left:20px; color:Red"><i class="fa fa-heart"></i></a></p>
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
					<p > <a href="" style="margin-left:200px" ><i class="fa fa-download"></i></a><a href="" style=" margin-left:20px; color:Red"><i class="fa fa-heart"></i></a></p>

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
						<p > <a href="" style="margin-left:200px" ><i class="fa fa-download"></i></a><a href="" style=" margin-left:20px; color:Red"><i class="fa fa-heart"></i></a></p>

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
						<p > <a href="" style="margin-left:200px" ><i class="fa fa-download"></i></a><a href="" style=" margin-left:20px; color:Red"><i class="fa fa-heart"></i></a></p>

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
						<p > <a href="" style="margin-left:200px" ><i class="fa fa-download"></i></a><a href="" style=" margin-left:20px; color:Red"><i class="fa fa-heart"></i></a></p>

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
					<p > <a href="" style="margin-left:200px" ><i class="fa fa-download"></i></a><a href="" style=" margin-left:20px; color:Red"><i class="fa fa-heart"></i></a></p>

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
					<p > <a href="" style="margin-left:200px" ><i class="fa fa-download"></i></a><a href="" style=" margin-left:20px; color:Red"><i class="fa fa-heart"></i></a></p>

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
						<p > <a href="" style="margin-left:200px" ><i class="fa fa-download"></i></a><a href="" style=" margin-left:20px; color:Red"><i class="fa fa-heart"></i></a></p>

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
						<p > <a href="" style="margin-left:200px" ><i class="fa fa-download"></i></a><a href="" style=" margin-left:20px; color:Red"><i class="fa fa-heart"></i></a></p>

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
					<p > <a href="" style="margin-left:200px" ><i class="fa fa-download"></i></a><a href="" style=" margin-left:20px; color:Red"><i class="fa fa-heart"></i></a></p>

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
						<p > <a href="" style="margin-left:200px" ><i class="fa fa-download"></i></a><a href="" style=" margin-left:20px; color:Red"><i class="fa fa-heart"></i></a></p>

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
					<p > <a href="" style="margin-left:200px" ><i class="fa fa-download"></i></a><a href="" style=" margin-left:20px; color:Red"><i class="fa fa-heart"></i></a></p>

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
						<p > <a href="" style="margin-left:200px" ><i class="fa fa-download"></i></a><a href="" style=" margin-left:20px; color:Red"><i class="fa fa-heart"></i></a></p>

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
						<p > <a href="" style="margin-left:200px" ><i class="fa fa-download"></i></a><a href="" style=" margin-left:20px; color:Red"><i class="fa fa-heart"></i></a></p>

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
						<p > <a href="" style="margin-left:200px" ><i class="fa fa-download"></i></a><a href="" style=" margin-left:20px; color:Red"><i class="fa fa-heart"></i></a></p>
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
						<p > <a href="" style="margin-left:200px" ><i class="fa fa-download"></i></a><a href="" style=" margin-left:20px; color:Red"><i class="fa fa-heart"></i></a></p>

					</div>--%>
				<%--</div>--%>
			</div>	
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
