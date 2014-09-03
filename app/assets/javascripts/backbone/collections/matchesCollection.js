App.MatchesCollection = Backbone.Collection.extend({
	model: App.MatchModel,
	url: '/matches',
	initialize: function() {
		console.log('New Match Collection');
	}
});