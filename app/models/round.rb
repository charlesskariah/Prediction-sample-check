class Round < ActiveRecord::Base
  has_many :matches
  belongs_to :league
end
