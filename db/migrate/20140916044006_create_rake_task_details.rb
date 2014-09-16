class CreateRakeTaskDetails < ActiveRecord::Migration
  def change
    create_table :rake_task_details do |t|
      t.string :name
      t.datetime :run_at
      t.timestamps
    end
  end
end
