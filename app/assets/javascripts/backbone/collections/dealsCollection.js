App.DealsCollection = Backbone.Collection.extend({
	model: App.DealModel,
	url: '/deals',
	initialize: function() {
		console.log('New Deal Collection');
	}
});