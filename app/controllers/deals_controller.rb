class DealsController < ApplicationController
	before_filter :authenticate_user!
	
	def show
		@deal = Deal.find(params[:id])
		render status: 200, json: @deal.to_json
	end

	def deals_search
		category = 'outdoor-adventures'
		@sqoot = Sqoot.search(category)
		@sqoot.each do |deal|
			Deal.create({
				title: deal['deal']['title'],	
				category: deal['deal']['category_slug'],
				description: deal['deal']['description'],
				image_url: deal['deal']['image_url'],
				expiration_date: deal['deal']['expires_at'],
				merchant_id: deal['deal']['merchant']['id']
			})
		end
		@deals = Deal.all
		render status: 200, json: @deals.to_json
	end



end