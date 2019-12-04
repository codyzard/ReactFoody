class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|

      t.integer :quantity
      
      t.references :product, foreign_key: {on_delete: :cascade}
      t.references :cart, foreign_key: {on_delete: :cascade}
      t.timestamps
    end
  end
end
