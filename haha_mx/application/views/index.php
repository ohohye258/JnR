<!DOCTYPE HTML>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
	<title>JnRInc. 小曼</title>
	 <link rel="stylesheet" href="<?php echo site_url('assets/css/style.css')?>" />
	 <script src="<?php echo site_url('assets/js/jquery-1.7.1.min.js')?>"></script>
	 <script src="<?php echo site_url('assets/js/jquery.masonry.min.js')?>"></script>
	 <script src="<?php echo site_url('assets/js/jquery.infinitescroll.js')?>"></script>
	 <script>
	 $(function(){
	 	var $container = $('#container');
	 	$container.imagesLoaded(function(){
	 		$container.masonry({
	 			itemSelector: '.box'
	 		});
	 	});
	 	
		 $container.infinitescroll({
		 	debug:false,
	      navSelector  : '#page_nav',    // selector for the paged navigation 
	      nextSelector : '#page_nav a',  // selector for the NEXT link (to page 2)
	      itemSelector : '.box',     // selector for all items you'll retrieve
	      loading: {
          finishedMsg: 'No more pages to load.',
          img: 'http://i.imgur.com/6RMhx.gif'
       		 }
	      },
	      // trigger Masonry as a callback
	      function( newElements ) {
	        // // hide new items while they are loading
	        // var $newElems = $( newElements ).css({ opacity: 0 });
	        // // ensure that images load before adding to masonry layout
	        // $newElems.imagesLoaded(function(){
	          // // show elems now they're ready
	          // $newElems.animate({ opacity: 1 });
	          // $container.masonry( 'appended', $newElems, true ); 
	        // });
	        alert("dd");
	        alert(newElements);
	      }
	    );
	 });
	 </script>
	 
</head>
<body>

<div id="container" class="clearfix">
  
  	<?php foreach($imgs as $img):?>
  		<div class="box">
  			<div class="img">
  				<a href="javascript:void(0)" title="zeez"><img src="<?php echo site_url('assets/images/')?>/<?php echo $img['file']?>" alt="Stanley" /></a>
  				<br/>
  				<p><?php echo $img['desc']?><a href="#">[评论]</a></p>
  			</div>
  			<div class="message">
  				<img class="head_ico" src="<?php echo site_url('assets/images/headIco/jjm.png')?>" alt="beautiful mm's head"/>
  				<p class="m_user">洞头</p>
  				<p class="m_message">橡皮艇，橡皮艇，鸡巴脸卖队友卖队友</p>
  			</div>
  			
  		</div>
  	<?php endforeach?>
</div> <!-- #container -->

<div id="page_nav">
  <a href="index/ajax_get_img/10/10"></a>
</div>

</body>
</html>