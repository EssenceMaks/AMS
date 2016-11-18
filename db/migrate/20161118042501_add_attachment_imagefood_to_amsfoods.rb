class AddAttachmentImagefoodToAmsfoods < ActiveRecord::Migration
  def self.up
    change_table :amsfoods do |t|
      t.attachment :imagefood
    end
  end

  def self.down
    remove_attachment :amsfoods, :imagefood
  end
end
