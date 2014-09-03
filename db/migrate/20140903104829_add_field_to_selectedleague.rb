class AddFieldToSelectedleague < ActiveRecord::Migration
  def change
  	add_column :selected_leagues, :total_points, :integer
  end
end
