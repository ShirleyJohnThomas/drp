$(function(){
	//背景轮播
	var size = $(".login .bg li").size();
	$(".login .bg li").eq(size-1).show();
	var num = 0;
	var t = setInterval(move,3000);
	function move(){
		if(num == size){
			num = 0;
		}
		$(".login .bg li").eq(num).stop().fadeIn().siblings().stop().fadeOut();
		num++;
	}
	
	$("#loginBtn").click(function(){
		document.loginForm.action="loginAction.do";
		document.loginForm.submit();
	})
})