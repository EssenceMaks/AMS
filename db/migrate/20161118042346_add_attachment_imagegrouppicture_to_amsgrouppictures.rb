class AddAttachmentImagegrouppictureToAmsgrouppictures < ActiveRecord::Migration
  def self.up
    change_table :amsgrouppictures do |t|
      t.attachment :imagegrouppicture
    end
  end

  def self.down
    remove_attachment :amsgrouppictures, :imagegrouppicture
  end
end
