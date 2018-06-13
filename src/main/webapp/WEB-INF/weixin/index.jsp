<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../head.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
	<head>
	<base href="<%=basePath%>"></base>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>首页</title>
		<script src="js/jquery-1.8.3.min.js"></script>
		<script src="js/index.js"></script>
		<meta name="viewport" content="width=device-width" />
		<meta name="viewport" content="initial-scale=1.0,user-scalable=no" />
		<link rel="stylesheet" type="text/css" href="css/index.css" />
	</head>
	<body>
		<!--头部-->
		<div class="head">
			<div class="home_text_b">
				<img src="img/search.png" class="search_img"/>
				<div class="home_text_box">
					<input type="text"  placeholder="康肤美"  id="home_text" class="home_text" onclick="window.location.href='other/search.html'" />
				</div>
			</div>
			<div class="news" onclick="window.location.href='other/login.html'">
				<span class="news_num">99</span>
				<img src="img/news.png" class="news_img"/>
			</div>
		</div>
		<!--头部-->
		
		<div class="body">
			<!--滚动图-->
			<div class="ad_b">
				<ul class="ad_ul">
				<c:forEach items="${banners1}" var="banner">
					<li >
						<img src="${banner.pic}" class="ad" />
					</li>
					</c:forEach>
				</ul>
				<div class="ad_spot_b1">
					<ul class="ad_spot_b">
						
					</ul>
				</div>
			</div>
			<!--滚动图-->
			<!--快捷键-->
			<div class="key">
				<table>
					<tr>
						<td>
							<div class="menu" onclick="window.location.href='other/introduction.html'">
								<div class="menu_on1 menu_on">
									<img src="img/menu (7).png"/>
								</div>
								<span>中医西药</span>
							</div>
						</td>
						<td>
							<div class="menu">
								<div class="menu_on2 menu_on">
									<img src="img/menu (0).png"/>
								</div>
								<span>养生保健</span>
							</div>
						</td>
						<td>
							<div class="menu">
								<div class="menu_on3 menu_on">
									<img src="img/menu (5).png"/>
								</div>
								<span>医疗器械</span>
							</div>
						</td>
						<td>
							<div class="menu">
								<div class="menu_on4 menu_on">
									<img src="img/menu (1).png"/>
								</div>
								<span>计生用品</span>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<div class="menu">
								<div class="menu_on5 menu_on">
									<img src="img/menu (6).png"/>
								</div>
								<span>中药饮片</span>
							</div>
						</td>
						<td>
							<div class="menu">
								<div class="menu_on6 menu_on">
									<img src="img/menu (2).png"/>
								</div>
								<span>医学护肤</span>
							</div>
						</td>
						<td>
							<div class="menu">
								<div class="menu_on7 menu_on">
									<img src="img/menu (8).png"/>
								</div>
								<span>热门商品</span>
							</div>
						</td>
						<td>
							<div class="menu">
								<div class="menu_on8 menu_on">
									<img src="img/menu (9).png"/>
								</div>
								<span>全部分类</span>
							</div>
						</td>
					</tr>
				</table>
				<div class="hot_new">
					<span class="hot_new_r">快报</span>
					<strong>HOT</strong>
					<div class="hot_new_box">
						<div class="hot_new_box1">
						<c:forEach items="${articles}" var="article">
							<div class="hot_new_b new_b1">
								<span>${article.title}</span>
							</div>
							</c:forEach>
						</div>
					</div>
					<a class="hot_new_a">|&nbsp;更多</a>
				</div>
			</div>
			<!--快捷键-->
			<!--活动-->
			<div class="activity">
				<div class="activity_head">
					<strong>今日推荐</strong>
				</div>
				<div class="activity_body">
					<div class="activity_b_box">
						<ul class="activity_b_ul">
						<c:forEach items="${commend}" var="jrtj">
							<li>
								<div class="activity_b_list">
								<a href="${jrtj.url}">
									<img src="${jrtj.pic}" onerror="javascript:this.src='<%=request.getContextPath()%>/images/kong.jpg'"/>
									</a>
									<p>${jrtj.name}</p>
								</div>
							</li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>
			<!--活动-->
			<!--中西医药-->
			<div class="ware">
				<div class="ware_head">
					<span class="ware_head_a">中/西/医/药</span>
					<a href="#"><span>更多</span><img src="img/more.png"/></a>
				</div>
				<div class="ware_body">
					<div class="">
					<c:forEach items="${type1}" var="t1">
					
						<div class="ware_list">
						<a href="${t1.url}">
							<img src="${t1.pic}" onerror="javascript:this.src='<%=request.getContextPath()%>/images/kong.jpg'" />
							</a>
							<p><b>${t1.name}</b></p>
							<!-- <span>国药准字<span>Z20073016</span></span> -->
							<p ><span style="color: #FF0000;">￥<b >${t1.price}</b></span><!-- <span class="ware_list_w">销量<label>123</label></span> --></p>
						</div>
					</c:forEach>
					</div>
				</div>
			</div>
			<!--中西医药-->
			<!--医疗器械-->
			<div class="ware">
				<div class="ware_head">
					<span class="ware_head_a">医/疗/器/械</span>
					<a href="#"><span>更多</span><img src="img/more.png"/></a>
				</div>
				<div class="ware_body">
				
					<div class="">
					<c:forEach items="${type3}" var="t3">
						<div class="ware_list">
							<a href="${t3.url}"><img src="${t3.pic}"
											onerror="javascript:this.src='<%=request.getContextPath()%>/images/kong1.jpg'"/>
											</a>
							<p><b></b>${t3.name}</p>
							<!-- <span>国药准字<span>Z20073016</span></span> -->
							<p ><span style="color: #FF0000;">￥<b >${t3.price}</b></span><span class="ware_list_w"><!-- 销量<label>123</label> --></span></p>
						</div>
						
						</c:forEach>
						</div>
				</div>
			</div>
			
			<!--医疗器械-->
			<!--养生保健-->
			<div class="ware">
				<div class="ware_head">
					<span class="ware_head_a">养/生/保/健</span>
					<a href="#"><span>更多</span><img src="img/more.png"/></a>
				</div>
				<div class="ware_body">
				
					<div class="">
					<c:forEach items="${type2}" var="t2">
						<div class="ware_list">
							<a href="${t2.url}"><img src="${t2.pic}"
											onerror="javascript:this.src='<%=request.getContextPath()%>/images/kong1.jpg'"/>
											</a>
							<p><b></b>${t2.name}</p>
							<!-- <span>国药准字<span>Z20073016</span></span> -->
							<p ><span style="color: #FF0000;">￥<b >${t2.price}</b></span><span class="ware_list_w"><!-- 销量<label>123</label> --></span></p>
						</div>
						
						</c:forEach>
					</div>	
				</div>
			</div>
			<!--养生保健-->
			<!--计生用品-->
			<div class="ware">
				<div class="ware_head">
					<span class="ware_head_a">计/生/用/品</span>
					<a href="#"><span>更多</span><img src="img/more.png"/></a>
				</div>
				<div class="ware_body">
				
					<div class="">
					<c:forEach items="${type9}" var="t9">
						<div class="ware_list">
							<a href="${t9.url}"><img src="${t9.pic}"
											onerror="javascript:this.src='<%=request.getContextPath()%>/images/kong1.jpg'"/>
											</a>
							<p><b></b>${t9.name}</p>
							<!-- <span>国药准字<span>Z20073016</span></span> -->
							<p ><span style="color: #FF0000;">￥<b >${t9.price}</b></span><span class="ware_list_w"><!-- 销量<label>123</label> --></span></p>
						</div>
						
						</c:forEach>
						</div>
				</div>
			</div>
			<!--计生用品-->
			<!--中药饮片-->
			<div class="ware">
				<div class="ware_head">
					<span class="ware_head_a">中/药/饮/片</span>
					<a href="#"><span>更多</span><img src="img/more.png"/></a>
				</div>
				<div class="ware_body">
			
					<div class="">
						<c:forEach items="${type10}" var="t10">
						<div class="ware_list">
							<a href="${t10.url}"><img src="${t10.pic}"
											onerror="javascript:this.src='<%=request.getContextPath()%>/images/kong1.jpg'"/>
											</a>
							<p><b></b>${t10.name}</p>
							<!-- <span>国药准字<span>Z20073016</span></span> -->
							<p ><span style="color: #FF0000;">￥<b >${t10.price}</b></span><span class="ware_list_w"><!-- 销量<label>123</label> --></span></p>
						</div>
						
						</c:forEach>
						</div>
				</div>
			</div>
			<!--中药饮片-->
			<!--美容护肤-->
			<div class="ware">
				<div class="ware_head">
					<span class="ware_head_a">美/容/护/肤</span>
					<a href="#"><span>更多</span><img src="img/more.png"/></a>
				</div>
				<div class="ware_body">
				
					<div class="">
					<c:forEach items="${type11}" var="t11">
						<div class="ware_list">
							<a href="${t11.url}"><img src="${t11.pic}"
											onerror="javascript:this.src='<%=request.getContextPath()%>/images/kong1.jpg'"/>
											</a>
							<p><b></b>${t11.name}</p>
							<!-- <span>国药准字<span>Z20073016</span></span> -->
							<p ><span style="color: #FF0000;">￥<b >${t11.price}</b></span><span class="ware_list_w"><!-- 销量<label>123</label> --></span></p>
						</div>
						
						</c:forEach>
						</div>
				</div>
			</div>
			<!--美容护肤-->
		</div>
		<div class="foot">
			<div class="container">
				<div class="center center_good foot_img" >
					<img src="img/home (1).png"/>
					<p>首页</p>
				</div>
				<div class="center foot_img" onclick="window.location.href='other/classification.html'">
					<img src="img/list (2).png"/>
					<p>分类</p>
				</div>
				<div class="center foot_img" onclick="window.location.href='other/shop.html'">
					<img src="img/shop (2).png"/>
					<p>购物车</p>
				</div>
				<div class="center foot_img">
					<img src="img/me (2).png"/>
					<p>我的</p>
				</div>
			</div>
		</div>
	</body>
</html>