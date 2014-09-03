App.DealView = Backbone.View.extend({
	className: 'deal',

	initialize: function() {
		console.log('New Deal View!');
		this.template = HandlebarsTemplates['deals/deal'];
		this.listenTo(this.model, 'change', this.render);
		this.render();
	},
	render: function() {
		this.$el.empty();
		this.$el.html(this.template(this.model.toJSON()));
	}
});