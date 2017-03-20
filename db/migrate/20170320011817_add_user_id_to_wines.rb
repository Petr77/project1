class AddUserIdToWines < ActiveRecord::Migration[5.0]
  def change
    add_column :wines, :user_id, :integer
  end
end
