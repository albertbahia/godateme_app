class InterestsController < ApplicationController

	def index
		@interests = Interest.all
		render status: 200, json: @interests.to_json
	end

end