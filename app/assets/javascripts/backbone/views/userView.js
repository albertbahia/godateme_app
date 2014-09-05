App.UserView = Backbone.View.extend({
	className: 'user',

	initialize: function() {
		console.log('New User View!');
		this.template = HandlebarsTemplates['users/user'];
		// this.templateDeal = HandlebarsTemplates['deals/deal']
		this.listenTo(this.model, 'change', this.render);
		this.listenTo(this.model, 'destroy', this.fadeAndRemove);
		this.render();
	},

	render: function() {
		this.$el.empty();
		this.$el.html(this.template(this.model.toJSON()));
		// this.$el.html(this.templateDeal(this.model.toJSON()));
	},

	events: {
		'click button' : 'fadeAndRemove'
	},

	fadeAndRemove: function() {
		this.$el.fadeOut(1000);
	}
});