App.DealModel = Backbone.Model.extend({
	initialize: function() {
		console.log('New Deal Model!');	
	},
	urlRoot: '/deals'
});