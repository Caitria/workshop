$(function() {
    
	

 	
	//ANIMATIONS
  	var wow = new WOW(
	  {
		boxClass:     'wow',      // animated element css class (default is wow)
		animateClass: 'animated', // animation css class (default is animated)
		offset:       0,          // distance to the element when triggering the animation (default is 0)
		mobile:       false        // trigger animations on mobile devices (true is default)
	  }
	);
	wow.init();
    
	

   //VIDEO
   $("#video").fitVids({ customSelector: "iframe[src^='http://vimeo.com/89527215'], iframe[src^='http://vimeo.com/89527215']"});
   
   
   
   //MILESTONE
    $('#infinity').data('countToOptions', {
        onComplete: function (value) {
            count.call(this, {
                from: value,
                to: value + 1
            });
        }
    });

    // start all the timers
    $('.timer').each(count);

    function count(options) {
        var $this = $(this);
        options = $.extend({}, options || {}, $this.data('countToOptions') || {});
        $this.countTo(options);
    }
	 
});


	//SHARE BUTTONS
	$('.social-likes').socialLikes({
    url: 'http://www.themeforest.net',
    counters: true,
    singleTitle: 'Share it!'
});

$(window).load(function(){
	
	
	//PARALLAX BACKGROUND
	$(window).stellar({
		horizontalScrolling: false,
});
    
	
    //PRELOADER
    $('.preload').delay(350).fadeOut('slow'); // will fade out the white DIV that covers the website.
    $('body').delay(350).css({'overflow-x':'hidden'});
	
});
	
    



