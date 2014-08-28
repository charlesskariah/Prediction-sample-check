class LeaguesController < ApplicationController
  def view_leagues
    @leagues = League.all
    user_id = current_user.id
    @unjoined_leagues =  League.find_by_sql "SELECT * FROM leagues WHERE id NOT IN (SELECT league_id from selected_leagues where user_id = user_id)"
    @joined_leagues= current_user.leagues
  end

  def join_league
    @selected_league = SelectedLeague.new(status: "active" , user_id: current_user.id , league_id: params[:id] ) 
    @selected_league.save 
    end
end