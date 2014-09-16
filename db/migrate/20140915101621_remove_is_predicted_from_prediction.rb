class RemoveIsPredictedFromPrediction < ActiveRecord::Migration
  def change
    remove_column :predictions, :is_predicted, :boolean
  end
end
