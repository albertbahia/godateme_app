App.UserView = Backbone.View.extend({
	className: 'user',

	initialize: function() {
		console.log('New User View!');
		this.template = HandlebarsTemplates['users/user'];
		// this.templateDeal = HandlebarsTemplates['deals/deal']
		this.listenTo(this.model, 'change', this.render);
		this.render();
	},

	render: function() {
		this.$el.empty();
		this.$el.html(this.template(this.model.toJSON()));
	},

	events: {}
});