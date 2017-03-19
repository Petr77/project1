class CreateRegionsVarieties < ActiveRecord::Migration[5.0]
  def change
    create_table :regions_varieties do |t|
      t.integer :region_id
      t.integer :variety_id

      t.timestamps
    end
  end
end
