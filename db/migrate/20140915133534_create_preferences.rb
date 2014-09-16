class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.string :time_zone
      t.belongs_to :user
      t.timestamps
    end
  end
end
