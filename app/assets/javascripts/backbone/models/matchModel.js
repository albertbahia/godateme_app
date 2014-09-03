App.MatchModel = Backbone.Model.extend({
	initialize: function() {
		console.log('New Match Model!');
	},
	urlRoot: '/matches'
});