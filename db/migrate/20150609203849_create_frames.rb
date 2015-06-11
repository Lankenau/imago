class CreateFrames < ActiveRecord::Migration
  def change
    create_table :frames do |t|
      t.string :material
      t.string :color
      t.integer :picture_id
      t.string :cover

      t.timestamps

    end
  end
end
