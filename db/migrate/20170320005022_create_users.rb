class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :name
      t.text :bio
      t.string :image
      t.date :dob
      t.string :user_type

      t.timestamps
    end
  end
end
