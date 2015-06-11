class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.integer :user_id
      t.integer :picture_id
      t.integer :size_id
      t.integer :material_id
      t.integer :quantity
      t.integer :frame_id

      t.timestamps

    end
  end
end
