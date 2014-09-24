class PredictionsController < ApplicationController
  def index
    selected_league_id = SelectedLeague.where(
    'user_id =? AND league_id =?',
    current_user.id,
    params[:league_id]
    ).first.id
    @predictions = Prediction.where(selected_league_id: selected_league_id)
    @league = League.find(params[:league_id])
  end

  def create
    @prediction = Prediction.new(prediction_params)
    if @prediction.save
      round_id = params[:round_id]
      @league = @prediction.match.round.league
      # binding.pry
      redirect_to  league_matches_path(round_id: round_id),flash: {notice: "Prediction created" }
    else
      round_id = params[:round_id]
      @league = @prediction.match.round.league
      redirect_to league_matches_path(round_id: round_id),flash: {notice: "Prediction not possible" }
    end
  end

  def update
    round_id = params[:round_id]
    @prediction = Prediction.find(params[:id])
    @league = @prediction.match.round.league
    if @prediction.update(prediction_params)
      redirect_to  league_matches_path(round_id: round_id),flash: {notice: "Prediction updated" }
    else
      redirect_to  league_matches_path(round_id: round_id),flash: {notice: "No more predictions for this match" }
    end
  end

  def delete
  end

  private

  def prediction_params
    params.require(:prediction).permit(
    :club1_predicted_score,
    :club2_predicted_score,
    :selected_league_id,
    :match_id
    )
  end
end
