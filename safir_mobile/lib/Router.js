Router.configure({
    layoutTemplate: 'mainLayout',
    loadingTemplate: 'loading',
    onAfterAction: function(){
        
    }
    
});

Router.map(function () {
    this.route('/', {
        onBeforeAction: function (pause) {
            if(this.ready){
                this.render('home');
            }
        }  
    });
});

// login page
Router.route('/login',{
	name:'login'
});

// register page
Router.route('/register',{
	name:'register'
})

//best selling
Router.route('/bestSelling',{
	name:'bestSelling'
});

// detail page
Router.route('/detail',{
	name:'detail'
});

//profile page
Router.route('/profile',{
	name:'profile'
});

//profile1 page
Router.route('/profile1',{
	name:'profile1'
});

//look page
Router.route('/look',{
	name:'look'
});

//lift page
Router.route('/lift',{
	name:'lift'
});

//reward page
Router.route('/reward',{
	name:'reward'
});

//tuto page
Router.route('/tuto',{
	name:'tuto'
});

//tuto1 page
Router.route('/tuto1',{
	name:'tuto1'
});

//checkout page
Router.route('/checkOut',{
	name:'checkOut'
});

//webzine page
Router.route('/webzine',{
	name:'webzine'
});

//webzine detail page
Router.route('/webzinedetail',{
	name:'webzinedetail'
});

//forum-menu page
Router.route('/forummenu',{
	name:'forummenu'
});

//descussing page
Router.route('/discuss1',{
	name:'descuss1'
});

Router.route('/discuss2',{
	name:'discuss2'
});

Router.route('/discuss3',{
	name:'discuss3'
});

//editprofile page
Router.route('/editprofile',{
	name:'editprofile'
});

//page quiz
Router.route('/quiz',{
	name:'quiz'
});

//quiz affinity
Router.route('/quizaff',{
	name:'quizaff'
})