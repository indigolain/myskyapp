class RemoveImageFileStringFromSkyimages < ActiveRecord::Migration
  def change
    remove_column :skyimages, :image_file_string, :string
  end
end
