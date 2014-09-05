App.UserView = Backbone.View.extend({
	className: 'user',

	initialize: function() {
		console.log('New User View!');
		this.template = HandlebarsTemplates['users/user'];
		// this.templateDeal = HandlebarsTemplates['deals/deal']
		this.listenTo(this.model, 'change', this.render);
		this.listenTo(this.model, 'destroy', this.fadeAndRemove);
		this.listenTo(this.model, 'interested-button', this.fadeRemoveNotify);
		this.render();
	},

	render: function() {
		this.$el.empty();
		this.$el.html(this.template(this.model.toJSON()));
		// this.$el.html(this.templateDeal(this.model.toJSON()));
	},

	events: {
		'click button.destroy' : 'fadeAndRemove',
		'click button.interested-button' : 'fadeRemoveNotify'
	},

	fadeAndRemove: function() {
		this.$el.fadeOut(1000);
	},

	fadeRemoveNotify: function() {
		this.$el.fadeOut(1000);
		console.log('interested notifcation');
		$('h3').text('Notifed User').fadeIn(1000);
		// $('.interested-notification').fadeOut(1000);

	}
});