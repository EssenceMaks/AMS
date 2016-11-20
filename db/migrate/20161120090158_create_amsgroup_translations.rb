class CreateAmsgroupTranslations < ActiveRecord::Migration
  def self.up
    Amsgroup.create_translation_table!({
      titlerus: :string,
      descriptionrus: :text
    }, {
      migrate_data: true
    })
  end

  def self.down
    Amsgroup.drop_translation_table! migrate_data: true
  end
end
