class AddAttachmentImagestonepictureToAmsstonepictures < ActiveRecord::Migration
  def self.up
    change_table :amsstonepictures do |t|
      t.attachment :imagestonepicture
    end
  end

  def self.down
    remove_attachment :amsstonepictures, :imagestonepicture
  end
end
