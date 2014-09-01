class InterestsController < ApplicationController
	before_filter :authenticate_user!
	
	def index
		@interests = Interest.all
		render status: 200, json: @interests.to_json
	end

end