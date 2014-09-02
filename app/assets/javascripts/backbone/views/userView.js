App.UserView = Backbone.View.extend({
	className: 'user',

	initialize: function() {
		console.log('New User View!');
		this.template = HandlebarsTemplate['users/user'];
		console.log(this.template);
		this.render();
	},
	render: function() {
		this.$el.empty();
		this.$el.html(this.template(this.model.toJSON()));
		console.log('rendering single user');
	}
});