class AddAttachmentImagegroupToAmsgroups < ActiveRecord::Migration
  def self.up
    change_table :amsgroups do |t|
      t.attachment :imagegroup
    end
  end

  def self.down
    remove_attachment :amsgroups, :imagegroup
  end
end
