class ChangeUsersNameToEmail < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :name, :email
  end
end
