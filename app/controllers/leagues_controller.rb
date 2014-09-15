class LeaguesController < ApplicationController
  def view_leagues
    @leagues = League.all
    @joined_leagues = current_user.leagues
    user_id = current_user.id
    @unjoined_leagues = @leagues - @joined_leagues
  end

  def join_league
    @selected_league = SelectedLeague.new(status: "active" , user_id: current_user.id , league_id: params[:id] ,total_points: 0)
    @selected_league.save
    flash[:notice] = "Succesfully Joined "
    redirect_to :action => 'view_leagues'
  end
end
