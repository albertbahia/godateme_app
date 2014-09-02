App.DealListView = Backbone.View.extend({
	el: '#deal-list',
	initialize: function() {
		console.log('New Deal List View');
		this.listenTo(this.collection, 'reset', this.render);
		this.render();
	},

	render: function() {
		console.log('deal list view render');
		this.$el.empty();
		console.log('deal list append');
		this.collection.each(function(deal) {
			var dealView = new App.DealView({
				model: deal
			});
			this.$el.prepend(dealView.$el);
		}, this);
	}
});