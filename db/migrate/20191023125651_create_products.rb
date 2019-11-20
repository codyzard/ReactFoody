class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :image
      t.float :price , default: 0.0
      t.boolean :classify , default: true #food or drink
      t.integer :quantity, default: 0
      t.string :description, default: "0"
      t.references :category, foreign_key: true
      t.timestamps
    end
  end
end
