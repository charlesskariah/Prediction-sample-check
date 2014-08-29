class MatchesController < ApplicationController
	def view_matches
		@matches = Match.where(:round_id => params[:round_id])
	end
end
