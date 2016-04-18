Template.home.onRendered(function(){
	var swiper = new Swiper('.swiper-container', {
		autoplay: 5000,
        pagination: '.swiper-pagination',
        paginationClickable: '.swiper-pagination',
        nextButton: '.swiper-button-next',
        prevButton: '.swiper-button-prev',
        spaceBetween: 30,
        hashnav: true,
        autoplayDisableOnInteraction: true
    });
    var swiper = new Swiper('.swiper-container-product', {
        pagination: '.swiper-pagination',
        slidesPerView: 2,
        paginationClickable: true,
        spaceBetween: 30
    });
});
Template.checkOut.onRendered(function(){
    var swiper = new Swiper('.swiper-container-checkout', {
        pagination: '.swiper-pagination',
        slidesPerView: 2,
        paginationClickable: true,
        spaceBetween: 30
    });
});
Template.webzine.onRendered(function(){
    var swiper = new Swiper('.swiper-container', {
        autoplay: 5000,
        pagination: '.swiper-pagination',
        paginationClickable: '.swiper-pagination',
        nextButton: '.swiper-button-next',
        prevButton: '.swiper-button-prev',
        spaceBetween: 30,
        hashnav: true,
        autoplayDisableOnInteraction: true
    });
});