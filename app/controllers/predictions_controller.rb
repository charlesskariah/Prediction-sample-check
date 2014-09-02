class PredictionsController < ApplicationController
  def view_predictions
    @predictions=Prediction.where(:selected_league_id => params[:league_id])
    @league=League.find(params[:league_id]).league_name
  end

  def create
  	# render plain: params.inspect
  	@prediction = Prediction.new(prediction_params)
  	# render plain: @prediction.inspect
  	@prediction.save
  	round_id = params[:round_id]
  	redirect_to :controller => 'matches', :action => 'view_matches', round_id: round_id
  end

  def update
  end

  def delete
  end
  private
  def prediction_params
    	params.require(:prediction).permit(:club1_predicted_score, :club2_predicted_score, :selected_league_id, :match_id)
  end
end
