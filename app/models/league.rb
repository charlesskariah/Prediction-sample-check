require 'date'
class League < ActiveRecord::Base
  has_many :rounds
  has_many :selected_leagues
  has_many :users, through: :selected_leagues
  has_and_belongs_to_many :clubs

  def upcoming_round
    Match.where(
    'start_time >= ? AND round_id IN(?)',
    Time.now, rounds.map(&:id)
    ).order(:start_time).first.try(:round)
  end
end
