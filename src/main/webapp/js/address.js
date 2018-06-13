window.onload = function() {
				//默认地址
				mo()
			}
			/*默认地址*/
			function mo() {
				for(i = 0; i < $(".address_list").length; i++) {
					if($(".address_list").eq(i).attr("uname") == "1") {
						$(".address_list").eq(i).find(".address_gou").css("background-image", "url(../img/gou2.png)")
						$(".address_list").eq(i).find(".address_list_f").find("span").eq(1).css("color", "#cc0000")
					}
					else{
						$(".address_list").eq(i).find(".address_gou").css("background-image", "url(../img/gou1.png)")
						$(".address_list").eq(i).find(".address_list_f").find("span").eq(1).css("color", "#666")
					}
				}
			}
			/*删除*/
			function del(ob) {
				var mymessage = confirm("确认删除？");
				if(mymessage == true) {
					$(ob).parents("li").remove();
				}
			}
			/*编辑*/
			function edit(ob) {
				//添加数据
				$(".address_list").attr("edit","0");	//清空
				$(ob).parents(".address_list").attr("edit","1"); //判断地址进行编辑
				$(".body1").hide();
				$(".body2").show().attr("new","1"); //判断是否是新增还是编辑 0为清空  1为编辑 2为新增
				$(".back").attr({"href":"#","onclick":"back()"})
				//取值
				var name = $(ob).parents(".address_list").find(".address_name").text();
				var photo = $(ob).parents(".address_list").find(".address_phone").text();
				var di = $(ob).parents(".address_list").find(".address_di").text();
				//赋值
				$("#collect_name").val(name);
				$("#collect_photo").val(photo);
				$("#collect_address").val(di);
				$(".foot_but ").html("<span>确认编辑</span>").attr("onclick","edit_on()")
				
			}
			/*确认编辑*/
			function edit_on(){
				//取值
				var name = $("#collect_name").val();
				var photo = $("#collect_photo").val();
				var di = $("#collect_address").val();
				//赋值
				for(i=0;i<$(".address_list").length;i++){
					if($(".address_list").eq(i).attr("edit")==1){
						$(".address_list").eq(i).find(".address_name").text(name);
						$(".address_list").eq(i).find(".address_phone").text(photo);
						$(".address_list").eq(i).find(".address_di").text(di)
					}
				}
				//清空数据
				$(".address_list").attr("edit","0");
				$(".body1").show();
				$(".body2").hide().attr("new","0"); //判断是否是新增还是编辑  0为清空 1为编辑 2为新增
				$(".foot_but ").html("<span>新增地址</span>").attr("onclick","add()")
				//清空
				$("#collect_name").val("")
				$("#collect_photo").val("")
				$("#collect_address").val("")
			}
			/*新增地址*/
			function add(){
				if($(".body1 ul").find("li").length<6){
					$(".body1").hide();
					$(".body2").show().attr("new","2");
					$(".foot_but ").html("<span>确认新增</span>").attr("onclick","add_on()")
					$(".back").attr({"href":"#","onclick":"back()"})
				}
				else{
					$(".cue_box").show()
					$(".cue_box span").text("地址最多为6个");
					$(".cue_box").fadeOut()
				}
			}
			/*确认新增*/
			function add_on(){
				//取值
				var name = $("#collect_name").val();
				var photo = $("#collect_photo").val();
				var di = $("#collect_address").val();
				var strhtml = ""
				//判断是否为空
				if(name == ""){
					$(".cue_box").show()
					$(".cue_box span").text("收货者名字为空");
					$(".cue_box").fadeOut()
				}
				else if(photo == ""){
					$(".cue_box").show()
					$(".cue_box span").text("手机号码为空");
					$(".cue_box").fadeOut()
				}
				else if(di == ""){
					$(".cue_box").show()
					$(".cue_box span").text("所在地址为空");
					$(".cue_box").fadeOut()
				}
				else{
					$(".body1").show();
					$(".body2").hide().attr("new","0"); //判断是否是新增还是编辑  0为清空 1为编辑 2为新增
					//新增
					strhtml = '<li><div class="address_list" uname="0" edit="0"><img src="../img/address.png" /><div class="address_list_b"><p><span class="address_name">'
						+name+
						'</span><span class="address_phone">'
						+photo+
						'</span></p><p ><span class="address_di">'
						+di+
						'</span></p></div><div class="address_list_f"><span class="address_gou"></span><span onclick="mo_set(this)">默认地址</span><img src="../img/del.png" /><span onclick="del(this)">删除</span><img src="../img/editor.png" /><span onclick="edit(this)">编辑</span></div></div></li>'
					
					$(".body1 ul").append(strhtml)
					$(".foot_but ").html("<span>新增地址</span>").attr("onclick","add()")
				}
			}
			/*设置默认地址*/
			function mo_set(ob){
				$(".address_list").attr("uname","0"); //0为非默认 1为设置为默认
				$(ob).parents(".address_list").attr("uname","1");
				
				mo()
			}
			/*返回地址管理*/
			function back(){
					$(".body1").show();
					$(".body2").hide().attr("new","0"); //判断是否是新增还是编辑  0为清空 1为编辑 2为新增
					$(".address_list").attr("edit","0");
					$(".foot_but ").html("<span>新增地址</span>").attr("onclick","add()")
					setTimeout('$(".back").attr({"href":"javascript:history.back(-1)","onclick":""})',200);
					
			}