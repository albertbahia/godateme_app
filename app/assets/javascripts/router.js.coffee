# For more information see: http://emberjs.com/guides/routing/

App.Router.map () -> 
	console.log('ember routing');
	console.log(this);
	@resource('users');

