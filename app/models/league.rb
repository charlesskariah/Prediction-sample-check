class League < ActiveRecord::Base
	has_many :rounds
	has_many :selected_leagues
  has_many :users, :through => :selected_leagues
  has_and_belongs_to_many :clubs
  
end
