class CreateSkyimages < ActiveRecord::Migration
  def change
    create_table :skyimages do |t|
      t.integer :user_id
      t.string :title
      t.text :body
      t.string :image_file_string
      t.string :location

      t.timestamps
    end
  end
end
