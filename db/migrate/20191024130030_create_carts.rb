class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.integer :status , default: 3 # 3 carting, 0 pending , 1 accept, 2 decline
      t.float :checkout #money
      t.datetime :buyTime
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
