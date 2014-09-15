class RenameLastuseddateTodate < ActiveRecord::Migration
  def change
  	rename_column :rake_task_details, :last_used_date, :datetime
  end
end
