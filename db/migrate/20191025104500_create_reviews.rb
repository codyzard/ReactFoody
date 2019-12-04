class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :comment
      t.integer :rate

      t.references :user, foreign_key: {on_delete: :cascade}
      t.references :product, foreign_key: {on_delete: :cascade}
      t.timestamps
    end
  end
end
