class MatchesController < ApplicationController
	def view_matches
		@matches = Match.where(:round_id => params[:round_id])
		@prediction = Prediction.new
	end
	def has_user_joined_league
		current_league = params[:round_id].league
	end
end