class Round < ActiveRecord::Base
  has_many :matches
  belongs_to :league

  def previous_round
  end

  def next_round
  end
end
