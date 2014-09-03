class DealsController < ApplicationController
	before_filter :authenticate_user!

	def index
		@deals = current_user.find_matched_deals
		render status: 200, json: @deals.to_json
	end

	def show
		@deal = Deal.find(params[:id])
		render status: 200, json: @deal.to_json
	end

end