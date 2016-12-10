class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :product_id
      t.integer :user_id
      t.string :description
      t.integer :rating

      t.timestamps null: false
    end
      add_index :comments, :product_id
  end
end
