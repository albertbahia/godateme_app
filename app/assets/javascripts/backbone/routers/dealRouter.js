App.DealsRouters = Backbone.Router.extend({
	routes: {
		'': 'index'
	},

	initialize: function() {
		console.log('Deal Router!');
	},

	index: function() {
		console.log('deals router index');
		App.dealsCollection.fetch({reset: true});
	}
});