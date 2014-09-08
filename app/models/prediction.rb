class Prediction < ActiveRecord::Base
  validates :club1_predicted_score, :club2_predicted_score, presence: true
  belongs_to :selected_league
  belongs_to :match
end
