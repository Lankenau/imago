class CreateProfilePictures < ActiveRecord::Migration
  def change
    create_table :profile_pictures do |t|
      t.string :picture
      t.integer :user_id

      t.timestamps

    end
  end
end
