require 'date'
class League < ActiveRecord::Base
  has_many :rounds
  has_many :selected_leagues
  has_many :users, :through => :selected_leagues
  has_and_belongs_to_many :clubs

  def upcoming_round
    Match.where("match_date >= ? AND round_id IN(?)", Date.today, rounds.map(&:id)).order(:match_date).first.try(:round)
  end
end
