<%@ Page Language="C#" AutoEventWireup="true" CodeFile="person.aspx.cs" Inherits="person" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<meta charset="utf-8">
<title>person</title>
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

<!-- //the jScrollPane script -->
<script type="text/javascript" src="js/jquery.mousewheel.js"></script>
<script type="text/javascript" src="js/prototype.js"></script>

<script type="text/javascript" src="js/scriptaculous.js?load=effects"></script>

<script type="text/javascript" src="js/lightbox.js"></script>

<link href="css/person.css" rel="stylesheet" type="text/css">
<link href="SpryAssets/SpryValidationSelect.css" rel="stylesheet" type="text/css">
<script src="js/jquery.min.js"></script>
<script src="js/jss.js"></script>
<script src="SpryAssets/SpryValidationSelect.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
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
					<h1 class="navbar-brand"><a  href="main.aspx">Find</a></h1>
				</div>
				<!--navbar-header-->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li><a href="main.aspx" class="active">首页</a></li>
					<%--	<li class="dropdown">
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
											<li><a class="list" href="type.aspx">人文</a></li>
											<li><a class="list" href="products.html">动物</a></li>
											<li><a class="list" href="products.html">环境</a></li>
											<li><a class="list" href="products.html">旅行</a></li>

											<li><a class="list" href="products.html">科技</a></li>
										</ul>
									</div>


								</div>
							</ul>
						</li>	--%>			


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
        <div class="main">
        	<div class=" main_in"></div>
            <div class="inner">
           	  <div class="user">
                	<div class="img">
                    <img src="images/username.jpg" width="200" height="200"/>
                    </div>
                 <div class="counts">
              	    
              </div>
              </div>
            </div>
            <input type="text" id="txtname" class="username" value="田馥甄" runat="server"/><input type="text" id="perid" runat="server" style=" display:none;"/>
             <div class="table">
             	<ul>
                	<li><a href="#" >画板</a>
                    <div class="g-right" style="display: block">
                            <div class="g-rightin">
                                <div class="local">
                                    <div class="top-l">我的画板</div>
                                    <div class="newsCon">
                                        <div class="newsCon-t">画板列表</div>
                                        <div class="newsCon-b">
                                        <%=printImg %>
                                        	<div class="b1">
                                               <a href="#" data-content="c1" class="more">+上传图片</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    
                    </li>
                	<li><a href="#">收藏</a>
                    	<div class="g-right">
                            <div class="g-rightin">
                                <div class="local">
                                    <div class="top-l">我的收藏</div>
                                    <div class="newsCon">
                                        <div class="newsCon-t">收藏列表</div>
                                        <div class="newsCon-b">
                                        <%=printCollect %>
                                    <%--    <div class="b2">
                                            <a href="#"><img src="images/username.jpg" width="250" height="250"/></a>
                                         </div>--%>
                                        	
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                	
                	
                    
                </ul>
             </div>
        </div>
       
        <div class="fullbg"></div>
        <div class="dialog" >
            <p class="close"><a href="#" onclick="closeBg();">×</a></p>
            <div class="jj">
           </div>
        </div>
        <div class="content" style="display:none">
        <div class="c1">
          <input id="dec" type="text" placeholder="图片名称、描述" runat="server"/>
          <select name="tp" style="margin-left:25px; width:400px; height:35px; border:1px solid #ccc; margin-top:25px;">
                <option></option>
                <%=printTypes %>
           </select>
           <br/>
            <p style="margin-left:25px; display:block; float:left;margin-top:25px;">图片：</p><asp:FileUpload ID="FileUpload1" runat="server" style="margin-top:25px; border:none; width:280px;"/>
          <input name="btn" type="button" value="上传图片" style=" background:#C06; width:150px; height:40px; color:#FFF; margin-left:250px; border-radius:10px;cursor:pointer; margin-top:10px;" id="Button1" onserverclick="Button1_ServerClick" runat="server"/>
          
        </div>
          
          <div class="c2">
          </div>
         </div> 
         
    <script type="text/javascript">
//显示灰色 jQuery 遮罩层
        function showBg() {
			var contentClass= $(this).attr('data-content');
			$('.jj').append($('.'+contentClass).clone());
			  $(".fullbg").show();
			$('.dialog').show();
		}
		
        //关闭灰色 jQuery 遮罩
        function closeBg() {
            $(".fullbg,.dialog").hide();
			$('.jj').empty();
        }
		$('.more').on('click',showBg);
        var spryselect1 = new Spry.Widget.ValidationSelect("spryselect1");
    </script>

        <script type="text/javascript" id="sourcecode">
			$(function()
			{
				$('.scroll-pane').jScrollPane();
			});
		</script>

    </div>
    </form>
</body>
</html>
