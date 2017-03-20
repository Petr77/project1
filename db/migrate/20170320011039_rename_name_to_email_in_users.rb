class RenameNameToEmailInUsers < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :name, :email 
  end
end
