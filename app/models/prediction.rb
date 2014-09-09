class Prediction < ActiveRecord::Base
  #validates :club1_predicted_score, :club_2_predicted_score, presence: true,
  validate :check_for_matchdate
  validates :club1_predicted_score, :club2_predicted_score, :presence => {:message => "Score should be atleast 0"}
  belongs_to :selected_league
  belongs_to :match

  def check_for_matchdate
    current_match_date = Match.find(match_id).match_date
  	if current_match_date < Date.today
  		errors.add(:base, "cannot predict ")
    end	
  end
end