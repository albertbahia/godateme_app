App.DealListView = Backbone.View.extend({
	el: '#deal-list',
	initialize: function() {
		console.log('New Deal List View');
		console.log(this);
		this.render();
	},

	render: function() {
		console.log('deal list view render');
		this.$el.empty();
		this.collection.each(function(deal) {
			var dealView = new App.DealView({
				model: deal
			});
			this.$el.append(dealView.$el);
		}, this);
	}
});