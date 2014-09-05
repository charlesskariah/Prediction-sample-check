class Round < ActiveRecord::Base
  has_many :matches
  belongs_to :league

  def previous_round
  	league.upcoming_round.try(:id) - 1 if league.upcoming_round
  end

  def next_round
  	league.upcoming_round.try(:id) + 1 if league.upcoming_round
  end
end
