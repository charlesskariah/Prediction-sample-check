class CreatePredictions < ActiveRecord::Migration
  def change
    create_table :predictions do |t|
      t.integer :club1_predicted_score
      t.integer :club2_predicted_score
      t.integer :result
      t.integer :accuracy
      t.integer :margin
      t.integer :points
      t.belongs_to :selected_league
      t.belongs_to :match
      t.timestamps
    end
  end
end
