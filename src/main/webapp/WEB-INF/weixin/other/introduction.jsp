<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../../head.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>

	<head>
		
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>产品页</title>
		<meta name="viewport" content="width=device-width" />
		<meta name="viewport" content="initial-scale=1.0,user-scalable=no" />
		<script src="<%=basePath%>/js/jquery-1.8.3.min.js"></script>
		<script src="<%=basePath%>/js/introduction.js"></script>
		<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/introduction.css" />
		<base href="<%=basePath%>"></base>
	</head>

	<body>
		<!--头部-->
		<div class="head">
			<a href="javascript:history.back(-1);" class="back"><img src="<%=basePath%>/img/left.png" /></a>
			<div class="commodity_top">
				<h4 class="comm_on" onclick="intro(this,'.body1')">商品</h4>
				<h4 class="" onclick="intro(this,'.body2')">详情</h4>
				<h4 class="" onclick="intro(this,'.body3')">评价</h4>
			</div>
			<a href="#" class="more"><img src="<%=basePath%>/img/more2.png" /></a>
		</div>
		<!--身躯-->
		<div class="body">
			<div class="body1 body_o">
				<!--滚动图-->
				<div class="ad_b">
					<ul class="ad_ul">
					<c:choose>
					<c:when test="${!empty product.pics}">
					<c:forEach items="${product.pics}" var="img">
						<li>
							<img src="${img}" class="ad" onerror="javascript:this.src='<%=basePath%>/img/more2.png'" />
						</li>
					</c:forEach>
					</c:when>
					<c:otherwise>
					<li>
					<img src="${product.pic}" class="ad"/>
					</li>
					</c:otherwise>
					</c:choose>

					</ul>
					<div class="ad_spot_b1">
						<ul class="ad_spot_b">
						</ul>
					</div>
				</div>
				<!--滚动图-->
				<div class="commodity_body1">
					<img src="<%=basePath%>/img/ico_bs1.jpg" />
					<h1>${product.name}【${product.batchNum}】</h1>
					<p>零售价<span class="commodity_text_y">￥</span><span class="commodity_text_mo">18.22</span></p>
					<p>运费<span class="commodity_text_y">包邮</span></p>
				</div>
				<div class="commodity_body2">
					<span>浏览量<label>${product.clickNum}</label></span>
					<span>累积销量<label>${product.sales}</label></span>
					<span>累积评价<label>${countNums}</label></span>
				</div>
				<div class="commodity_body3" onclick="black_show()">
						<span>可选规格</span>
						<span>${product.specs}</span>
						<img src="<%=basePath%>/img/right (1).png"/>
				</div>
				<div class="commodity_body4">
					<img src="<%=basePath%>/img/good1.png"/>
					<span>店铺发货&售后</span>
					<img src="<%=basePath%>/img/good1.png"/>
					<span>货到付款</span>
					<img src="<%=basePath%>/img/good1.png"/>
					<span>七天无理由退货</span>
				</div>
			</div>	
			<div class="body2 body_o">
				<!--商品详情-->
				<div class="commodity_head">
					
					<div class="commodity_body5">
						<div class="comm_details">
							<div >
								<h4>产品参数</h4>
					<div class="comm_details_text">
						<p>生产厂家:&nbsp;<span>山东孔府制药有限公司</span></p>
						<p>产品规格:&nbsp;<span>10g*10袋</span></p>
						<p>包装清单:&nbsp;<span></span></p>
						<p>是否处方:&nbsp;<span>不需要处方</span></p>
						<p>经营药房:&nbsp;<span>平台自营</span></p>
						<p>批准文号:&nbsp;<span>国药准字Z37020003</span></p>
						<p>剂型:&nbsp;<span>中药饮品</span></p>
					</div>
				</div>
				<div>
					<h4>产品细节</h4>
					<div class="comm_details_img">
						<img src="../img/tw5.jpg" />
						<img src="../img/tw5.jpg" />
						<img src="../img/tw5.jpg" />
						<img src="../img/tw5.jpg" />
					</div>
				</div>
			</div>
			<div class="">

			</div>
			<div class="">

			</div>
		</div>
		</div>
		<!--商品详情-->
		</div>
			<div class="body3 body_o">
				<div class="evaluate_head">
					<div class="evaluate_name">
						<span></span>
					</div >
					<span class="evaluate_ratio">好评率<label id="evaluate_num0"></label>%</span>
				</div>
				<div class="evaluate_score">
					<span>全部（<label id="evaluate_num1">${disComments.allComments}</label>）</span>
					<span>好评（<label id="evaluate_num2">${disComments.good}</label>）</span>
					<span>中评（<label>${disComments.mid}</label>）</span>
					<span>差评（<label>${disComments.low}</label>）</span>
				</div>
				<div class="evaluate_body">
					<ul>
					<c:forEach items="${disComments.getComments()}" var="comment">
						<li>
							<div class="user_head">
								<img src="${comment.user.pic}" />
								<p class="user_name">${comment.user.nickname}</p>
								<span class="evaluate_time">评论于<label><date:date value="${comment.addtime}" /></label></span>
							</div>
							<div class="user_evaluate">
								<p>${comment.content}</p>
							</div>
							<div class="user_ass">
								评价：<span>
								<c:choose>
								<c:when test="${comment.greade==0}">好评</c:when>
								<c:when test="${comment.greade==1}">好评</c:when>
								<c:otherwise>差评</c:otherwise>
								</c:choose>
					</span>
							</div>
						</li>
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>
		<!--脚部-->
		<div class="foot">
			<div class="intro_foot1">
				<div onclick="window.location.href='<%=basePath%>'"><img src="<%=basePath%>/img/home (2).png" />
					<p>首页</p>
				</div>
				<div onclick="window.location.href='shop.html'">
					<div class="intro_shop_div">
						<img src="<%=basePath%>/img/shop (2).png" />
						<span class="intro_shop_i">${countCart}</span>
						<span class="intro_shop_anima"></span>
					</div>
					<p>购物车</p>
				</div>
				<div onclick="collection(this)" style="width: 40px;">
					<img src="<%=basePath%>/img/xin (1).png" />
					<p>收藏</p>
				</div>
				<a class="intro_but">
					<input type="button" name="" id="" value="加入购物车" onclick="black_show()" />
				</a>
				<a class="intro_but_check">
					<input type="button" name="" id="" value="需求登记" onclick="black_show()" />
				</a>
			</div>
		</div>
		<!--弹窗-->
		<div class="black">
			<div class="black_head">
				<div class="black_img">
					<img src="<%=basePath%>/img/TB.jpg" />
				</div>
				<img src="<%=basePath%>/img/ca1.png" class="black_del" onclick="del()" />
				<div class="black_price">
					<h4>￥<h4>120.23</h4></h4>
					<p>商品编号：<label>13213213231</label></p>
				</div>
			</div>

			<div class="black_box">
				<div class="black_spec">
					<span>规格</span>
					<div class="black_spec_b">
				    <c:forEach items="${product.skus}" var="sku">
						<div class="black_spec_list" onclick="spec(this)">
							${sku.spec}
						</div>
					</c:forEach>
					</div>
				</div>
				<div class="black_num">
					<span>数量</span>
					<div>
						<input type="button" id="minus" value="-" onclick="minus()" />
						<input type="text" name="" id="number" value="1" placeholder="1" />
						<input type="button" id="add" value="+" onclick="add()" />
					</div>
				</div>
			</div>
			<div class="black_but">
				<input type="button" name="" id="" value="确认" onclick="anima(),del()"/>
			</div>
		</div>
	</body>

</html>