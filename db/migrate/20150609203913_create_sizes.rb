class CreateSizes < ActiveRecord::Migration
  def change
    create_table :sizes do |t|
      t.integer :picture_id
      t.string :size

      t.timestamps

    end
  end
end
