App.MatchView = Backbone.View.extend({
	className: 'match',
	initialize: function() {
		console.log('New Match View');
		this.template = HandlebarsTemplates['matches/match'];
		this.listenTo(this.model, 'change', this.render);
		this.listenTo(this.model, 'img-circle', this.showMatch);
		this.listenTo(this.model, 'destroy', this.destroyMatch);
		this.render();
	},
	render: function() {
		this.$el.empty();
		this.$el.html(this.template(this.model.toJSON()));
	},
	events: {
		'click' : 'showMatch',
		'click .destroy' : 'destroyMatch'
	},
	showMatch: function() {
		var match = this.model;
		$('#myModal').hide().fadeIn();
		$('.matched-user-photo').attr("src", match.attributes.photo);
		$('.matched-user-name').text(match.attributes.name);
		$('.matched-user-age').text(match.attributes.age);
		$('.matched-user-interest-category').text(match.attributes.interest_category);
		App.router.navigate('match/' + match.id);
	},
	destroyMatch: function() {
		console.log('destroyed!');
		this.$el.fadeOut();
	}


});