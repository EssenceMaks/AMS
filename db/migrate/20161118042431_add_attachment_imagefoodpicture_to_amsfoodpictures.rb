class AddAttachmentImagefoodpictureToAmsfoodpictures < ActiveRecord::Migration
  def self.up
    change_table :amsfoodpictures do |t|
      t.attachment :imagefoodpicture
    end
  end

  def self.down
    remove_attachment :amsfoodpictures, :imagefoodpicture
  end
end
