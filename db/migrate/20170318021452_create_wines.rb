class CreateWines < ActiveRecord::Migration[5.0]
  def change
    create_table :wines do |t|
      t.string :name
      t.integer :variety_id

      t.timestamps
    end
  end
end
