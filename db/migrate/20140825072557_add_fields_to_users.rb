class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastname,  :string
    add_column :users, :username, :string
    add_column :users, :country, :string
    add_column :users, :dob,     :date
    add_column :users, :is_admin, :boolean
  end
end
