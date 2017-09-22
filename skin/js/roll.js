// JavaScript Document
$(function(){

	var lbt = 0;
	var lbtw = $(".ey_zjd").width();
	console.log(lbtw);
	var lbtgs = $(".ey_zj").length;
	$(".ey_list").css({width:lbtw * lbtgs});
	$(".ey_zj").css({width:lbtw});

	$(".ey_ring").click(function(){
		if(lbt<lbtgs-1){
			lbt++;
			play();
		}
	});

	$(".ey_left").click(function(){
		if(lbt>0){
			lbt--;
			play();
		}
	});	
	function play(){
		$(".ey_list").animate({left:-lbtw * lbt},300);
	}

});

