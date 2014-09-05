class Prediction < ActiveRecord::Base
  belongs_to :selected_league
  belongs_to :match
end
