class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.string :round_name
      t.string :status
      t.belongs_to :league

      t.timestamps
    end
  end
end
