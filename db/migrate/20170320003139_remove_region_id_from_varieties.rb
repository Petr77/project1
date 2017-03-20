class RemoveRegionIdFromVarieties < ActiveRecord::Migration[5.0]
  def change
    remove_column :varieties, :region_id, :integer
  end
end
