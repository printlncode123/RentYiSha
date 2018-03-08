$(function(){
	var width=$('.banner .tu img').eq(0).width();//每张图片宽度
	var index=0;
	$('.yuandian ul li').each(function() {
	       var i=$(this).index();//序号索引 
	       index=i;
	     });
	/*$('.yuandian ul li:eq(i)').mouseover(function(){
		$(this).addClass('on').siblings().removeClass('on');
		$('.banner .tu img:eq(index)').animate(function(){
			$(this).css('left',-width*index);
		});
	});*/
});