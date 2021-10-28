class CreateFacilities < ActiveRecord::Migration[5.2]
  def change
    create_table :facilities do |t|
      t.string :name, null: false, index: true, unique: true
      t.integer :prefecture, null: false
      t.integer :type, null: false
      t.string :address, null: false, unique: true
      t.string :feature
      t.string :url, unique: true

      t.timestamps
    end
  end
end
