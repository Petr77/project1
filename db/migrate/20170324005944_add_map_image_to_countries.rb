class AddMapImageToCountries < ActiveRecord::Migration[5.0]
  def change
    add_column :countries, :map_image, :string
  end
end
