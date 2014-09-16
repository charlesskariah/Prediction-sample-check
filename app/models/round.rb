class Round < ActiveRecord::Base
  has_many :matches
  belongs_to :league

  def previous_round
    # TODO: change previous round logic
    Round.where('id < ?', id).order('id desc').first
  end

  def next_round
    # TODO: change previous round logic
    Round.where('id > ?', id).order(:id).first
  end
end
