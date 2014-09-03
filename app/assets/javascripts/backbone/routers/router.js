App.Router = Backbone.Router.extend({
	routes: {
		'': 'index',
	},

	initialize: function() {
		console.log('User Router!');
	},

	index: function() {
		console.log('users router index');
		App.usersCollection.fetch({reset: true});
	}


});