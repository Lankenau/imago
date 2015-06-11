class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.boolean :orientation
      t.integer :width
      t.integer :ratio
      t.string :latitude
      t.string :longitude
      t.integer :height
      t.string :image
      t.text :description
      t.string :city
      t.string :country
      t.string :type
      t.integer :user_id
      t.integer :tag_id
      t.string :name

      t.timestamps

    end
  end
end
