App.MatchView = Backbone.View.extend({
	className: 'match',
	initialize: function() {
		console.log('New Match View');
		this.template = HandlebarsTemplates['matches/match'];
		this.render();
	},
	render: function() {
		this.$el.empty();
		this.$el.html(this.template(this.model.toJSON()));
	}
});