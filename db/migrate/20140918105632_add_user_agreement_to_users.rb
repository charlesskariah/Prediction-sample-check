class AddUserAgreementToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_agreement, :boolean
  end
end
