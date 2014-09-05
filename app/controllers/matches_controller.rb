class MatchesController < ApplicationController
  def view_matches
    @matches = Match.where(:round_id => params[:round_id])
    league_id = Round.find(params[:round_id]).league
    @selected_league = SelectedLeague.where(league_id: league_id, user_id: current_user.id).to_a.first
    @prediction = Prediction.new
  end

  def has_user_joined_league
    current_league = params[:round_id].league
  end
end
