class CreateSelectedLeagues < ActiveRecord::Migration
  def change
    create_table :selected_leagues do |t|
      t.string :status
      t.belongs_to :league 
      t.belongs_to :user

      t.timestamps
    end
  end
end
