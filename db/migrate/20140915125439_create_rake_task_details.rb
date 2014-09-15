class CreateRakeTaskDetails < ActiveRecord::Migration
  def change
    create_table :rake_task_details do |t|
      t.datetime :last_used_date

      t.timestamps
    end
  end
end
