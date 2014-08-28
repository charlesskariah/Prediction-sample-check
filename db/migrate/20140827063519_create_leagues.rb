class CreateLeagues < ActiveRecord::Migration
  def change
    create_table :leagues do |t|
      t.string :league_name
      t.date :start_date
      t.date :end_date
      t.string :location
      t.string :status
      t.string :logo

      t.timestamps
    end
  end
end
