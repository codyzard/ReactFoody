class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :image
      t.float :price
      t.boolean :classify #food or drink
      t.integer :quantity
      t.string :description
      t.references :category, foreign_key: true
      t.timestamps
    end
  end
end
