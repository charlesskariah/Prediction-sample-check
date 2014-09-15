class Prediction < ActiveRecord::Base
  # validate :check_for_matchdate
  validates :club1_predicted_score, :club2_predicted_score, :presence => {:message => "Score should be atleast 0"}
  belongs_to :selected_league
  belongs_to :match

  def check_for_matchdate
    current_match_time = Match.find(match_id).match_time
    current_match_date = Match.find(match_id).match_date
  	if current_match_date <= Date.today && current_match_time <  Time.now.utc
  		errors.add(:base, "You prediction can't be created ")
    end	
  end
end