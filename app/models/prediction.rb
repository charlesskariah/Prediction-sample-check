class Prediction < ActiveRecord::Base
  validate :check_for_matchdate
  validates :club1_predicted_score, :club2_predicted_score, presence: true
  belongs_to :selected_league
  belongs_to :match

  def check_for_matchdate
    return unless match.start_time.past?
    errors.add(:base, "You prediction can't be created ")
  end
end
