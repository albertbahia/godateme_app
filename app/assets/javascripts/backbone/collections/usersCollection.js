App.UsersCollection = Backbone.Collection.extend({
	model: App.UserModel,
	url: '/users',
	initialize: function() {
		console.log('New User Collection');
	}
});