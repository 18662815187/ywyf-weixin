<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
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
					<li >
						<img src="img/ad1.jpg" class="ad" />
					</li>
					<li >
						<img src="img/ad2.jpg" class="ad" />
					</li>
					<li >
						<img src="img/ad3.jpg" class="ad" />
					</li>
				</ul>
				<div class="ad_spot_b1">
					<ul class="ad_spot_b">
						<li><div class="ad_spot ad_spot1" name="1"></div></li>
						<li><div class="ad_spot ad_spot2" name="2"></div></li>
						<li><div class="ad_spot ad_spot2" name="3"></div></li>
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
									<img src="img/search1.png"/>
								</div>
								<span>寻找药品</span>
							</div>
						</td>
						<td>
							<div class="menu">
								<div class="menu_on2 menu_on">
									<img src="img/menu (1).png"/>
								</div>
								<span>计生用品</span>
							</div>
						</td>
						<td>
							<div class="menu">
								<div class="menu_on3 menu_on">
									<img src="img/menu (2).png"/>
								</div>
								<span>美肤药妆</span>
							</div>
						</td>
						<td>
							<div class="menu">
								<div class="menu_on4 menu_on">
									<img src="img/menu (3).png"/>
								</div>
								<span>母婴专区</span>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<div class="menu">
								<div class="menu_on5 menu_on">
									<img src="img/menu (4).png"/>
								</div>
								<span>维生素钙</span>
							</div>
						</td>
						<td>
							<div class="menu">
								<div class="menu_on6 menu_on">
									<img src="img/menu (5).png"/>
								</div>
								<span>医疗器械</span>
							</div>
						</td>
						<td>
							<div class="menu">
								<div class="menu_on7 menu_on">
									<img src="img/menu (6).png"/>
								</div>
								<span>养生药品</span>
							</div>
						</td>
						<td>
							<div class="menu">
								<div class="menu_on8 menu_on">
									<img src="img/menu (7).png"/>
								</div>
								<span>中西医药</span>
							</div>
						</td>
					</tr>
				</table>
				<div class="hot_new">
					<span class="hot_new_r">快报</span>
					<strong>HOT</strong>
					<div class="hot_new_box">
						<div class="hot_new_box1">
							<div class="hot_new_b new_b1">
								<span>【魅力三月，暖春特惠】特惠20元起！本品用于妊娠和哺乳期妇女、更年期妇女、老年人、儿童等的钙补充剂，并帮助防治骨质疏松症。</span>
							</div>
							<div class="hot_new_b new_b2">
								<span>并帮助防治骨质疏松症。【魅力四月，暖春特惠】特惠20元起！本品用于妊娠和哺乳期妇女、更年期妇女、老年人、儿童等的钙补充剂</span>
							</div>
							<div class="hot_new_b ">
								<span>等的钙补充剂【魅力四月，暖春特惠】特惠20元起！本品用于妊娠和哺乳期妇女、更年期妇女、老年人、儿童</span>
							</div>
						</div>
					</div>
					<a class="hot_new_a">|&nbsp;更多</a>
				</div>
			</div>
			<!--快捷键-->
			<!--活动-->
			<div class="activity">
				<div class="activity_head">
					<strong>一起抢</strong>
					<span id="hour_end">08</span>：
					<span id="minute_end">08</span>：
					<span id="second_end">08</span>
					<img src="img/hot.png"/>
				</div>
				<div class="activity_body">
					<table >
						<tr>
							<td style="border-top:3px solid #f1f1f1 ;">
								<img src="img/TB.jpg" class="activity_body_img"/>
								<p>￥<b>230.00</b></p>
								<p>￥<b>400.00</b></p>
							</td>
							<td style="border-left: 3px solid #f1f1f1; border-top:3px solid #f1f1f1 ;">
								<img src="img/TB.jpg" class="activity_body_img"/>
								<p>￥<b>230.00</b></p>
								<p>￥<b>400.00</b></p>
							</td>
							<td width="50%" style="border-left: 3px solid #f1f1f1; border-top:3px solid #f1f1f1 ;">
								<img src="img/TJ2.jpg" class="activity_body_ad"/>
							</td>
						</tr>
					</table>
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
					<div class="container">
						<div class="center ware_list">
							<img src="img/2017.jpg"/>
							<p><b>钙尔奇D 碳酸钙D3咀嚼片(Ⅱ) 300mg*30片</b></p>
							<span>国药准字<span>Z20073016</span></span>
							<p ><span style="color: #FF0000;">￥<b >25.00</b></span><span class="ware_list_w">销量<label>123</label></span></p>
						</div>
						<div class="center ware_list">
							<img src="img/2017.jpg"/>
							<p><b>钙尔奇D 碳酸钙D3咀嚼片(Ⅱ) 300mg*30片</b></p>
							<span>国药准字<span>Z20073016</span></span>
							<p ><span style="color: #FF0000;">￥<b >25.00</b></span><span class="ware_list_w">销量<label>123</label></span></p>
						</div>
						
					</div>	
					<div class="container">
						<div class="center ware_list">
							<img src="img/2017.jpg"/>
							<p><b>钙尔奇D 碳酸钙D3咀嚼片(Ⅱ) 300mg*30片</b></p>
							<span>国药准字<span>Z20073016</span></span>
							<p ><span style="color: #FF0000;">￥<b >25.00</b></span><span class="ware_list_w">销量<label>123</label></span></p>
						</div>
						<div class="center ware_list">
							<img src="img/2017.jpg"/>
							<p><b>钙尔奇D 碳酸钙D3咀嚼片(Ⅱ) 300mg*30片</b></p>
							<span>国药准字<span>Z20073016</span></span>
							<p ><span style="color: #FF0000;">￥<b >25.00</b></span><span class="ware_list_w">销量<label>123</label></span></p>
						</div>
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
					<div class="container">
						<div class="center ware_list">
							<img src="img/2017.jpg"/>
							<p><b>钙尔奇D 碳酸钙D3咀嚼片(Ⅱ) 300mg*30片</b></p>
							<span>国药准字<span>Z20073016</span></span>
							<p ><span style="color: #FF0000;">￥<b >25.00</b></span><span class="ware_list_w">销量<label>123</label></span></p>
						</div>
						<div class="center ware_list">
							<img src="img/2017.jpg"/>
							<p><b>钙尔奇D 碳酸钙D3咀嚼片(Ⅱ) 300mg*30片</b></p>
							<span>国药准字<span>Z20073016</span></span>
							<p ><span style="color: #FF0000;">￥<b >25.00</b></span><span class="ware_list_w">销量<label>123</label></span></p>
						</div>
						
					</div>	
					<div class="container">
						<div class="center ware_list">
							<img src="img/2017.jpg"/>
							<p><b>钙尔奇D 碳酸钙D3咀嚼片(Ⅱ) 300mg*30片</b></p>
							<span>国药准字<span>Z20073016</span></span>
							<p ><span style="color: #FF0000;">￥<b >25.00</b></span><span class="ware_list_w">销量<label>123</label></span></p>
						</div>
						<div class="center ware_list">
							<img src="img/2017.jpg"/>
							<p><b>钙尔奇D 碳酸钙D3咀嚼片(Ⅱ) 300mg*30片</b></p>
							<span>国药准字<span>Z20073016</span></span>
							<p ><span style="color: #FF0000;">￥<b >25.00</b></span><span class="ware_list_w">销量<label>123</label></span></p>
						</div>
					</div>
				</div>
			</div>
			<!--医疗器械-->
		</div>
		<div class="foot">
			<div class="container">
				<div class="center center_good foot_img">
					<img src="img/home (1).png"/>
					<p>首页</p>
				</div>
				<div class="center foot_img">
					<img src="img/list (2).png"/>
					<p>分类</p>
				</div>
				<div class="center foot_img">
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
