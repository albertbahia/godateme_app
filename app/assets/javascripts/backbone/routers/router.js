App.Router = Backbone.Router.extend({
	routes: {
		'': 'index',
		'/match/:id' : 'showMatch'
	},

	initialize: function() {
		console.log('User Router!');
	},

	index: function() {
		App.usersCollection.fetch({reset: true});
		App.matchesCollection.fetch({reset: true})
		App.dealsCollection.fetch({reset: true});
	},

	showMatch: function() {
		console.log('showmatchRouter');
	}


});