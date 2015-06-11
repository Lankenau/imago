class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :material
      t.integer :picture_id

      t.timestamps

    end
  end
end
