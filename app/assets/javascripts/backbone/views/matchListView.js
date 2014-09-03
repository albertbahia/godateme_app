App.MatchListView = Backbone.View.extend({
	el: '#match-list',

	initialize: function() {
		console.log('New Match List View');
		this.listenTo(this.collection, 'reset', this.render);
		this.listenTo(this.collection, 'add', this.render);
		this.render();
	},

	render: function() {
		console.log('match list view render');
		this.$el.empty();
		this.collection.each(function(match) {
			var matchView = new App.MatchView({
				model: match
			});
			console.log('match list append');
			this.$el.prepend(matchView.$el);
		}, this);
	}
});