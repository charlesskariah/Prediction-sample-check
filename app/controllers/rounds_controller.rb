class RoundsController < ApplicationController
	def view_rounds
		@rounds=Round.where(:league_id => params[:league_id])
	end
end
