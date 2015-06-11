class CreateBackgroundPictures < ActiveRecord::Migration
  def change
    create_table :background_pictures do |t|
      t.string :picture
      t.integer :user_id

      t.timestamps

    end
  end
end
