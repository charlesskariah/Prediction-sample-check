class RoundsController < ApplicationController
  def view_rounds
    @rounds = Round.where(league_id:  params[:league_id])
    @league_total_points = SelectedLeague.where(
     league_id: params[:league_id],
     user_id: current_user.id
     ).first.total_points
    @user_name = User.find(current_user.id).firstname
    @league = League.find(params[:league_id])
  end
end
