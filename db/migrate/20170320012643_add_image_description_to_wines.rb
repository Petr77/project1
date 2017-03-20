class AddImageDescriptionToWines < ActiveRecord::Migration[5.0]
  def change
    add_column :wines, :image, :string
    add_column :wines, :description, :text
  end
end
