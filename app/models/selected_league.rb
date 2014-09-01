class SelectedLeague < ActiveRecord::Base
	belongs_to :user
    belongs_to :league
    has_many :predictions
    has_many :matches, through: :predictions
end
