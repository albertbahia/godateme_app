App.UserListView = Backbone.View.extend({
	el: '#user-list',
	
	initialize: function() {
		console.log('New User List View');
		this.listenTo(this.collection, 'reset', this.render);
		this.listenTo(this.collection, 'add', this.addToList);
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