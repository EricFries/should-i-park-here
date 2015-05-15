$(function() {
			
		setTimeout(function(){
		
			$('.fill-limit').each(function() {
				var me = $(this);
				var perc = me.attr("data-limit");
				var current_perc = 10;
				
				if(!$(this).hasClass('stop')){
				
					var progress = setInterval(function() {
													
						if (current_perc>=perc) {
							clearInterval(progress);
						} else {
							current_perc +=1;
							me.parent().children().children('.filler').css('height', (current_perc)+'%');
							me.html(current_perc+'<span>%</span>');
						}
				
					}, 6);
					
					me.addClass('stop');
					me.parent().children().children('.filler').addClass('stop');
					
				}
				
			});
			
		}, 0);
		
	});
