class RenameStarttimeFieldOfMatchesTable < ActiveRecord::Migration
  def change
  	rename_column :matches, :starttime, :start_time
  end
end
