class Match < ActiveRecord::Base
	belongs_to :round
	has_many :predictions
	has_many :selected_leagues, through: :predictions
	def is_predicted_by user_id
		
	end
end