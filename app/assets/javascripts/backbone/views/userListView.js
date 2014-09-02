App.UserListView = Backbone.View.extend({
	el: '#user-list',
	initialize: function() {
		console.log('New User List View');
		console.log(this);
		this.render();
	},

	render: function() {
		console.log('user list view render');
		this.$el.empty();
		this.collection.each(function(user) {
			var userView = new App.UserView({
				model: user
			});
			console.log('user list append');
			this.$el.prepend(userView.$el);
		}, this);
	}
});