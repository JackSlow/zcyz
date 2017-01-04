<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

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
											<%--<li><a class="list" href="products.html">人文</a></li>
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
					<a href="#"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a>
	
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
	<!--products-->
	<div class="products">	 
		<div class="container">

			<div class="col-md-9 product-model-sec">
			 <%=photoList%>
			

			</div>	
			<div class="col-md-3 rsidebar span_1_of_left">
				<section  class="sky-form">
					<div class="product_right">
						<h4 class="m_2"><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>单反品牌</h4>
						<div class="tab1">
							<ul class="place">								
								<li class="sort"><a href="javascript:0">佳能Canon</a> </li>

							</ul>
							<div class="clearfix"> </div>

					    </div>						  
						<div class="tab2">
							<ul class="place">								
								<li class="sort"><a href="javascript:0">尼康Nikon</a></li>

							</ul>
							<div class="clearfix"> </div>

					    </div>
						<div class="tab3 ">
							<ul class="place ">
								<li class="sort"><a href="javascript:0">宾得PENTAX</a></li>

							</ul>
							<div class="clearfix"> </div>

					    </div>
						<div class="tab4">
							<ul class="place">								
								<li class="sort"><a href="javascript:0">SONY</a></li>

							</ul>
							<div class="clearfix"> </div>

					    </div>

					</div>
				</section>
				<section  class="sky-form">
					<h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>单反分类</h4>
					<div class="row row1 scroll-pane">

						<div class="col col-4">
							<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i><a href="javascript:0">入门级</a></label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i><a href="javascript:0">中高级</a></label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i><a href="javascript:0">高级</a></label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i><a href="javascript:0">其他</a></label>

						</div>
					</div>
				</section>  				 

				<!---->
				<script type="text/javascript" src="js/jquery-ui.min.js"></script>
				<link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
					<script type='text/javascript'>//<![CDATA[ 
						$(window).load(function(){
						 $( "#slider-range" ).slider({
									range: true,
									min: 0,
									max: 100000,
									values: [ 500, 100000 ],
									slide: function( event, ui ) {  $( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
									}
						 });
						$( "#amount" ).val( "$" + $( "#slider-range" ).slider( "values", 0 ) + " - $" + $( "#slider-range" ).slider( "values", 1 ) );

						});//]]> 
					</script>
				<!---->
				<section  class="sky-form">
					<h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>单反像素</h4>
					<div class="row row1 scroll-pane">

						<div class="col col-4">
							<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i><a href="javascript:0">0-2000万</a></label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i><a href="javascript:0">2000-3000万</a></label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i><a href="javascript:0">300-5000万</a></label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>5000万以上</label>
						</div>
					</div>
				</section>


			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--//products-->
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
			<p>Copyright &copy; 2016.Company name All rights reserved</p>
		</div>
	</div>
	 <input type="text" id="txtname" style="display:none" runat="server"/>
       <input type="text" id="persid" style="display:none" runat="server" />
    </form>
</body>
</html>
