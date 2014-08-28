class CreateClubLeagues < ActiveRecord::Migration
  def change
    create_table :club_leagues do |t|
    	t.belongs_to :club
    	t.belongs_to :league
    end
  end
end
