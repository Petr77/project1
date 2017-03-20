class AddRegionIdToWines < ActiveRecord::Migration[5.0]
  def change
    add_column :wines, :region_id, :integer
  end
end
