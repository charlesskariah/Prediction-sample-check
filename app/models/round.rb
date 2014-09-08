class Round < ActiveRecord::Base
  has_many :matches
  belongs_to :league
  def previous_round
    restrict
    #TODO change previous round logic
    Round.where("id < ?", id).order("id desc").first
  end
  def next_round
    #TODO change previous round logic
    Round.where("id > ?", id).order(:id).first
  end
  def restrict
    current_round_id = Match.where("match_date >= ? ", Date.today).order(:match_date).first.round_id
    previous_matches = Match.where("match_date < ? ",Date.today)
     p "#########################"
     p previous_matches
     p current_round_id
  end
end
