class MatchesController < ApplicationController
  def index
    round_id = params[:round_id]
    if round_id
      @matches = Match.where(round_id: round_id).order(:start_time)
      @league = Round.find(round_id).league
    elsif params[:league_id].present?
      @league = League.find(params[:league_id])
    end
    @selected_league = SelectedLeague.where(
    league_id: @league.id,
    user_id: current_user.id
    ).to_a.first
    @prediction = Prediction.new
  end
end
