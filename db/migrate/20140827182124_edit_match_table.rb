class EditMatchTable < ActiveRecord::Migration
  def change
  	change_table :matches do |t|
    t.remove :match_name
    t.rename :date, :match_date
    t.rename :time, :match_time
end
  end
end
