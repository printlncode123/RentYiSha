$(function(){
	var width=$('.banner .tu img').eq(0).width();//ÿ��ͼƬ���
	var index=0;
	$('.yuandian ul li').each(function() {
	       var i=$(this).index();//������� 
	       index=i;
	     });
	/*$('.yuandian ul li:eq(i)').mouseover(function(){
		$(this).addClass('on').siblings().removeClass('on');
		$('.banner .tu img:eq(index)').animate(function(){
			$(this).css('left',-width*index);
		});
	});*/
});