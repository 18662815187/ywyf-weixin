window.onload = function() {
	deploy()
}
//分类第一级点击
function class_but(ob) {
	$(".class_list").removeClass("class_on");
	$(ob).addClass("class_on");
	//ajax

}
/*第三类分类展开收起*/
function deploy_up(ob) {
	$(ob).parents(".class_r_body").find("li").css("display", "inline")
	for(j = 8; j < $(ob).parents(".class_r_body").find("li").length; j++) {
		$(ob).parents(".class_r_body").find("li").eq(j).css("display", "none")
	}
	$(ob).parents(".class_r_body").find(".class_down").css("display", "inline");
}
/*第三类检测是否超过六个*/
function deploy() {
	var strhtml1 = '<li onclick="deploy_up(this)" class="class_deploy class_up"><span>收起</span><img src="../img/up.png"/></li>'
	var strhtml2 = '<li onclick="deploy_dowm(this)" class="class_deploy class_down"><span>展开</span><img src="../img/down.png"/></li>'
	var leng = null
	for(i = 0; i < $(".class_r_li").length; i++) {
		var leng = $(".class_r_li").eq(i).find(".class_r_body li").length
		if(leng > 9) {
			for(j = 8; j < leng; j++) {
				$(".class_r_li").eq(i).find(".class_r_body li").eq(j).css("display", "none");
			}
			$(".class_r_li").eq(i).find(".class_r_body li").eq(7).after(strhtml2);
			$(".class_r_li").eq(i).find(".class_r_body li").eq(leng).after(strhtml1);
			$(".class_up").css("display", "none");
		}
	}
}
/*第三类分类展开展开*/
function deploy_dowm(ob) {
	$(ob).parents(".class_r_body").find("li").css("display", "inline");
	$(ob).css("display", "none");
}