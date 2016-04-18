Template.header.onRendered(function(){
	// Toggle script

	$(".container").hide();

	$(".toggle").click(function(){
		$(this).toggleClass("active").next().slideToggle(350);
			return false;
	});

	// -------- Toggle script end ------ //

	$("#submenu-1").hide();

	jQuery('#a-submenu-1').click(function(){
		jQuery('#submenu-1').toggle(250);
	});

	var events = ("ontouchstart" in document.documentElement) ? 'touchstart touchon' : 'click';

	jQuery('#a-menu').bind(events, {direction:'right'},evthandler);
	jQuery('#a-sidebar').bind(events, {direction:'left'},evthandler);


	function evthandler (event) {
		var direction = event.data.direction;
		var class_selector = 'moved-'+direction;
		if (jQuery('#content-wrapper').is("."+class_selector)) {
            jQuery('#content-wrapper').removeClass(class_selector);

        } else {
            jQuery('#sidebar-wrapper').css("z-index", "-2");
            if(class_selector == "moved-right") jQuery('#sidebar-wrapper').css("z-index", "-2");
            if(class_selector == "moved-left") jQuery('#sidebar-wrapper').css("z-index", "0");
            jQuery('#content-wrapper').addClass(class_selector);
        }

	}

	function evthandlerswipe(from, to){
		var cls_to = 'moved-'+to, cls_from = 'moved-'+from;
        if (jQuery('#content-wrapper').is("."+cls_from)) {
            jQuery('#content-wrapper').removeClass(cls_from);
        } else if (!jQuery('#content-wrapper').is("."+cls_to)) {
            if(cls_to == "moved-right") jQuery('#sidebar-wrapper').css("z-index", "-2");
            if(cls_to == "moved-left") jQuery('#sidebar-wrapper').css("z-index", "0");
            jQuery('#content-wrapper').addClass(cls_to);
        }

	}

	jQuery("body").swipe({
        swipeLeft: function (event, direction, distance, duration, fingerCount) {
		evthandlerswipe('right','left');
        },
        swipeRight: function (event, direction, distance, duration, fingerCount) {
		evthandlerswipe('left','right');
        },
        excludedElements: jQuery.fn.swipe.defaults.excludedElements + ", .slides, .toggle"
	});

});

Template.header.events({
	"click #price_range":function(){
		$(".panel_price_range").slideToggle("slow");
	},
	"click #brands":function(){
		$(".panel_brands").slideToggle("slow");
	},
	"click #advanced":function(){
		$(".panel_advanced").slideToggle("slow");
	},
	"click #skin_type":function(){
		$(".panel_skin_type").slideToggle("slow");
	},
});
Template.menu.onRendered(function(){
	$(document).ready(function() {
		$(".u-vmenu").vmenuModule({
			Speed: 200,
			autostart: false,
			autohide: true
		});
	});
});

Template.menu.events({
	"click #makeup":function(){
		$("#makeup").addClass("active");
		$("#panel_makeup").slideToggle("slow");
		$("#panel_all_makeup").hide();
	},
	"click #all_makeup":function(){
		$("#panel_all_makeup").slideToggle("slow");
		$("#all_makeup").addClass("active");
		$("#panel_makeup").hide();
	}
});
Template.forummenu.onRendered(function(){
	$(document).ready(function() {
		$(".u-vmenu").vmenuModule({
			Speed: 200,
			autostart: false,
			autohide: true
		});
	});
});
Template.forummenu.events({
	"click #makeup":function(){
		$("#panel_makeup").slideToggle("slow");
		$("#panel_all_makeup").hide();
	},
	"click #all_makeup":function(){
		$("#panel_all_makeup").slideToggle("slow");
		$("#panel_makeup").hide();
	}
});
Template.quiz.events({
	"click #question":function(){
		$("#all_question").slideToggle("slow");
	}
});
Template.quizaff.events({
	"click #tuto":function(){
		$("#all_tuto").slideToggle("slow");
		$("#all_lipsticks").hide("slow");
		$("#all_lipsticks1").hide("slow");
	},
	"click #lipsticks":function(){
		$("#all_lipsticks").slideToggle("slow");
		$("#all_tuto").hide("slow");
		$("#all_lipsticks1").hide("slow");
	},
	"click #lipsticks1":function(){
		$("#all_lipsticks1").slideToggle("slow");
		$("#all_lipsticks").hide("slow");
		$("#all_tuto").hide("slow");
	}
});

// Template.quizaff.onRendered(function(){
// 		var swiper = new Swiper('.swiper-container-quiz', {
//         pagination: '.swiper-pagination',
//         effect: 'flip',
//         grabCursor: true,
//         nextButton: '.swiper-button-next',
//         prevButton: '.swiper-button-prev'
//     });
// });