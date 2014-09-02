// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .

App = Ember.Application.create({
	LOG_TRANSITIONS: true
});

// ---> Ember Router located at router.js.coffee

App.ApplicationAdapter = DS.RESTAdapter.extend({
	host: 'localhost:3000'
});

App.UsersRoute = Ember.Route.extend({
	model: function() {
		return this.store.findAll('user');
	}
});

App.User = DS.Model.extend({
	email: DS.attr('string'),
	name: DS.attr('string'),
	gender: DS.attr('string'),
	photo: DS.attr('string'),
	age: DS.attr('number'),
	interest_category: DS.attr('string')
});


