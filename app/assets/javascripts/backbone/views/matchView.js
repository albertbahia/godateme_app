App.MatchView = Backbone.View.extend({
	className: 'match',
	initialize: function() {
		console.log('New Match View');
		this.template = HandlebarsTemplates['matches/match'];
		this.listenTo(this.model, 'change', this.render);
		this.listenTo(this.model, 'img-circle', this.showMatch);
		this.render();
	},
	render: function() {
		this.$el.empty();
		this.$el.html(this.template(this.model.toJSON()));
	},
	events: {
		'click' : 'showMatch'
	},
	showMatch: function() {
		console.log('showmatch');
		var match = this.model;
		$('#myModal').hide().fadeIn();
		App.router.navigate('match/' + match.id);
	},
	
	
});