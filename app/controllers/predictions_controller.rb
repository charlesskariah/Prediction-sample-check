class PredictionsController < ApplicationController
  def create
  	@prediction = Prediction.new(prediction_params)
  	@prediction.save
  	round_id = params[:round_id]
  	redirect_to :controller => 'matches', :action => 'view_matches',notice: "Predicted Successfully!!", round_id: round_id 
  end

  def update
    round_id = params[:round_id]
    @prediction = Prediction.find(params[:id])
    if @prediction.update(prediction_params)
      redirect_to :controller => 'matches', :action => 'view_matches',notice: "Prediction Updated!!", round_id: round_id 
    end
  end

  def delete

  end

  private
  def prediction_params
    	params.require(:prediction).permit(:club1_predicted_score, :club2_predicted_score, :selected_league_id, :match_id)
  end
end