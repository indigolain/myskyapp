class AddAttachmentImageToSkyimages < ActiveRecord::Migration
  def self.up
    change_table :skyimages do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :skyimages, :image
  end
end
