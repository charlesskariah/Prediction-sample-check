class AddStarttimeToMatches < ActiveRecord::Migration
  def change
    add_column :matches, :starttime, :datetime
  end
end
