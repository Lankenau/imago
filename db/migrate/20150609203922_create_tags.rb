class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.integer :picture_id
      t.integer :user_id
      t.string :tag

      t.timestamps

    end
  end
end
