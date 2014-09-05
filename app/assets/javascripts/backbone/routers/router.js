App.Router = Backbone.Router.extend({
	routes: {
		'': 'index',
	},

	initialize: function() {
		console.log('User Router!');
	},

	index: function() {
		App.usersCollection.fetch({reset: true});
		App.dealsCollection.fetch({reset: true});
	}


});