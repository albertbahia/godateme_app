class MatchesController < ApplicationController
	before_filter :authenticate_user!
	
	def index
		@matches = Match.where(user_id1: current_user.id)
		# @matches = current_user.find_matches
		render status: 200, json: @matches.to_json
	end

	def show 
		@match = Match.find(params[:id])
		render status: 200, json: @match.to_json
	end

	def create
		@match = Match.new(match_params)
		if @match.save
			render status: 200, json: @match.to_json
		end
	end

	def destroy
		@match = Match.find(params[:id])
		if @match.destroy
			render status: 200, json: @match.to_json
		end
	end

	private
	def match_params
		params.require(:match).permit(:user_id1, :user_id2, :date_deal_id)
	end


end