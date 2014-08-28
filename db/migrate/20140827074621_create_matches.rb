class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :match_name
      t.integer :club_1_id
      t.integer :club_2_id
      t.date :date
      t.time :time
      t.integer :club_1_score
      t.integer :club_2_score
      t.belongs_to :round

      t.timestamps
    end
  end
end
