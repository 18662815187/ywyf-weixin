/*加载完毕后执行*/
			window.onload=function(){
				//总计
				zhonji()
			}
			/*数量加减*/
			function shop_num(ob){
				var shop_n = $(ob).parents(".shop_list_but").find(".shop_num")
				if($(ob).val()=="-"){
					if(shop_n.val()>1 ){
						shop_n.val(parseInt(shop_n.val())-1)
					}
				}
				else if($(ob).val()=="+"){
					shop_n.val(parseInt(shop_n.val())+1)
				}
				//总计
				zhonji()
			}
			/*单商品选择*/
			function commodity(ob){
				if($(ob).attr("uname")== "0"){
					$(ob).attr("uname", "1");
				}else{
					$(ob).attr("uname", "0");
				}
				//判断厂商下的商品是否全选
				factory_u(ob)
				//判断是否全选
				big_box_u()
			}
			/*产商选择*/
			function factory(ob) {
				if($(ob).attr("uname")=="0") {
					$(ob).attr({ "checked": "checked", "uname": "1" });
					$(ob).parents(".shop_list").find(".shop_list_l input").attr({ "checked": "checked", "uname": "1" });
				} else {
					$(ob).removeAttr("checked");
					$(ob).attr("uname", "0");
					$(ob).parents(".shop_list").find(".shop_list_l input").removeAttr("checked");
					$(ob).parents(".shop_list").find(".shop_list_l input").attr("uname", "0");
				};
				//判断是否全选
				big_box_u()
			}
			/*判断厂商下的商品是否全选*/
			function factory_u(ob){
				var nu = 0
				var ew = $(ob).parents(".shop_list").find(".shop_list_l");
				for(i=0;i<ew.length;i++){
					if(ew.eq(i).find("input").attr("uname")=="1"){
						nu=nu+1
					}
				}
				if(nu == ew.length){
					$(ob).parents(".shop_list").find(".shop_list_head input").attr({ "checked": "checked", "uname": "1" });
				}
				else {
					$(ob).parents(".shop_list").find(".shop_list_head input").removeAttr("checked");
					$(ob).parents(".shop_list").find(".shop_list_head input").attr("uname", "0");
				}
			}
			/*全选*/
			function big_box(){
				if($(".shop_balance input").attr("uname") == 0){
					$(".shop_balance input").attr({ "checked": "checked", "uname": "1" });
					for(i=0;i<$(".shop_list").length;i++){
						$(".shop_list").eq(i).find(".shop_list_head input").attr({ "checked": "checked", "uname": "1" });
						$(".shop_list").eq(i).find("input[type='checkbox']").attr({ "checked": "checked", "uname": "1" });
					}
				}
				else{
					$(".shop_balance input").removeAttr("checked");
					$(".shop_balance input").attr("uname", "0");
					for(i=0;i<$(".shop_list").length;i++){
						$(".shop_list").eq(i).find(".shop_list_head input").removeAttr("checked");
						$(".shop_list").eq(i).find(".shop_list_head input").attr("uname", "0");
						$(".shop_list").eq(i).find("input[type='checkbox']").removeAttr("checked");
						$(".shop_list").eq(i).find("input[type='checkbox']").attr("uname", "0");
					}
				}
				
			}
			/*判断是否全选*/
			function big_box_u(){
				var nu = 0
				var ew = $(".body").find(".shop_list");
				for(i=0;i<ew.length;i++){
					if($(".shop_list").eq(i).find(".shop_list_head input").attr("uname")=="1"){
						nu=nu+1
					}
				}
				if(nu == ew.length){
					$(".shop_balance input").attr({ "checked": "checked", "uname": "1" });
				}
				else {
					$(".shop_balance input").removeAttr("checked");
					$(".shop_balance input").attr("uname", "0");
				}
			}
			/*编辑*/
			function commodity_del(){
				if($(".register_on").text()=="编辑"){
					$(".shop_balance_t3").css("display","block");
					$(".shop_balance_t2").css("display","none");
					$(".shop_balance_t1").css("display","none");
					$(".register_on").text("完成")
					$(".settlement").css("background-color","#999").text("删除").attr("set","1")
				}
				else if($(".register_on").text()=="完成"){
					$(".shop_balance_t3").css("display","none");
					$(".shop_balance_t2").css("display","block");
					$(".shop_balance_t1").css("display","block");
					$(".register_on").text("编辑")
					$(".settlement").css("background-color","#cc0000").text("立即结算").attr("set","0")
					//总计
					zhonji()
				}
				
			}
			/*点击结算或者删除*/
			function result(){
				var len = $(".shop_list_l").length;
				if($(".settlement").attr("set")=="0"){
					alert("结算成功")
				}
				else if($(".settlement").attr("set")=="1"){
					for(i=0;i<len;i++){
						if($(".shop_list_l").eq(i).find("input").attr("uname")=="1"){
							$(".shop_list_l").eq(i).addClass("del_shop_list")
						}
					}
					for(j=0;j<$(".shop_list").length;j++){
						if($(".shop_list").eq(j).find(".shop_list_head").find("input").attr("uname")=="1"){
							$(".shop_list").eq(j).addClass("del_shop_list")
						}
					}
					$(".del_shop_list").remove()
				}
			}
			/*总计*/
			function zhonji(){
				var zhong = 0
				for(i=0;i<$(".shop_list_l").length;i++){
						var t1 =  $(".shop_list_l").eq(i).find(".shop_list_t2 span").text();
						var t2 = $(".shop_list_l").eq(i).find(".shop_num").val()
						zhong = zhong+(t1*t2)
					}
				$(".zhongji").text(zhong.toFixed(2))
			}