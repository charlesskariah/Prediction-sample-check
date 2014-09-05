class Match < ActiveRecord::Base
  belongs_to :round
  has_many :predictions
  has_many :selected_leagues, through: :predictions

  belongs_to :club_1, class_name: "Club"
  belongs_to :club_2, class_name: "Club"

  def user_prediction user_id
    selected_leagues = SelectedLeague.where(user_id:user_id, status:'active').to_a
    selected_leagues.each do |league|
      predicted = Prediction.where(match_id:self,selected_league_id:league.id).to_a
      if !predicted.empty?
        return predicted
      else
        return false
      end
    end
  end
end
