class AddDescriptionToVarieties < ActiveRecord::Migration[5.0]
  def change
    add_column :varieties, :description, :text
  end
end
