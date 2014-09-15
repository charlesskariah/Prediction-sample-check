class CreateRakeTaskDetails < ActiveRecord::Migration
  def change
    create_table :rake_task_details do |t|
      t.string :last_used_time

      t.timestamps
    end
  end
end
