class DealsController < ApplicationController

	def index
		@deals = Deal.all
		render status: 200, json: @deals.to_json
	end

	def show
		@deal = Deal.find(params[:id])
		render status: 200, json: @deal.to_json
	end

	def deals_search
		@sqoot = Sqoot.search(category)
	end



end