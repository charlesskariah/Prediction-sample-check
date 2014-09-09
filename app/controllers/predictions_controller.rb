class PredictionsController < ApplicationController

  def view_predictions
    selected_league_id=SelectedLeague.where('user_id =? AND league_id =?',current_user.id,params[:league_id]).first.id
    @predictions=Prediction.where(:selected_league_id => selected_league_id)
    @league=League.find(params[:league_id])
  end

  def create
    # current_round_id = Match.where("match_date >= ? ", Date.today).order(:match_date).first.round_id
    # if params[:round_id].to_i < current_round_id
    #    round_id = params[:round_id]
    #    @prediction = Prediction.new(prediction_params)
    #    @league = @prediction.match.round.league
    #    redirect_to :controller => 'matches', :action => 'view_matches',notice: "You are not able to predict completed Matches!!", round_id: round_id
    # else
      @prediction = Prediction.new(prediction_params)
      @prediction.save
      round_id = params[:round_id]
      @league = @prediction.match.round.league
      redirect_to :controller => 'matches', :action => 'view_matches',notice: "Predicted Successfully!!", round_id: round_id
    #end
  end

  def update
    # current_round_id = Match.where("match_date >= ? ", Date.today).order(:match_date).first.round_id
    # if params[:round_id].to_i < current_round_id
    #   round_id = params[:round_id]
    #   @prediction = Prediction.find(params[:id])
    #   @league = @prediction.match.round.league
    #   redirect_to :controller => 'matches', :action => 'view_matches',notice: "You are not able to update completed matches!!", round_id: round_id
    # else
      round_id = params[:round_id]
      @prediction = Prediction.find(params[:id])
      @league = @prediction.match.round.league
      if @prediction.update(prediction_params)
        redirect_to :controller => 'matches', :action => 'view_matches',notice: "Prediction Updated!!", round_id: round_id
      end
    #end
  end

  def delete
  end

  private
  def prediction_params
    params.require(:prediction).permit(:club1_predicted_score, :club2_predicted_score, :selected_league_id, :match_id)
  end

end
