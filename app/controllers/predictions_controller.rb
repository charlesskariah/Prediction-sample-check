class PredictionsController < ApplicationController

  def view_predictions
    selected_league_id=SelectedLeague.where('user_id =? AND league_id =?',current_user.id,params[:league_id]).first.id
    @predictions=Prediction.where(:selected_league_id => selected_league_id)
    @league=League.find(params[:league_id])
  end

  def create
      @prediction = Prediction.new(prediction_params)
      if @prediction.save
        round_id = params[:round_id]
        @league = @prediction.match.round.league
        redirect_to :controller => 'matches', :action => 'view_matches',notice: "Prediction Created!!", round_id: round_id
      else 
        round_id = params[:round_id]
        @league = @prediction.match.round.league
        redirect_to :controller => 'matches', :action => 'view_matches',notice: "Prediction is not possible", round_id: round_id
      end
  end
  def update
      round_id = params[:round_id]
      @prediction = Prediction.find(params[:id])
      @league = @prediction.match.round.league
      if @prediction.update(prediction_params)
        redirect_to :controller => 'matches', :action => 'view_matches',notice: "Prediction Updated!!", round_id: round_id
      else 
        redirect_to :controller => 'matches', :action => 'view_matches',notice: "No more predictions for this match!!", round_id: round_id
      end
  end

  def delete
  end

  private
  def prediction_params
    params.require(:prediction).permit(:club1_predicted_score, :club2_predicted_score, :selected_league_id, :match_id)
  end

end
