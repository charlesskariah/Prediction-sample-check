class Prediction < ActiveRecord::Base
  validate :check_for_matchdate
  validates :club1_predicted_score, :club2_predicted_score, :presence => {:message => "Score should be atleast 0"}
  belongs_to :selected_league
  belongs_to :match

  def check_for_matchdate
  	if match.start_time.past?
  		errors.add(:base, "You prediction can't be created ")
    end	
  end
end