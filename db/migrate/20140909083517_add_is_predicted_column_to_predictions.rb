class AddIsPredictedColumnToPredictions < ActiveRecord::Migration
  def change
    add_column :predictions, :is_predicted, :boolean
  end
end
