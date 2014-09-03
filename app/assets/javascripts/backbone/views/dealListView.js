App.DealListView = Backbone.View.extend({
	el: '#deal-list',
	initialize: function() {
		console.log('New Deal List View');
		this.listenTo(this.collection, 'reset', this.render);
		this.listenTo(this.collection, 'add', this.addToList);
		this.render();
	},

	render: function() {
		this.$el.empty();
		this.collection.each(function(deal) {
			var dealView = new App.DealView({
				model: deal
			});
			this.$el.prepend(dealView.$el);
		}, this);
	}
});