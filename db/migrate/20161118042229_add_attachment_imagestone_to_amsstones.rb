class AddAttachmentImagestoneToAmsstones < ActiveRecord::Migration
  def self.up
    change_table :amsstones do |t|
      t.attachment :imagestone
    end
  end

  def self.down
    remove_attachment :amsstones, :imagestone
  end
end
