class CreateAmsgrouppictureTranslations < ActiveRecord::Migration
  def self.up
    Amsgrouppicture.create_translation_table!({
      titlerus: :string,
      descriptionrus: :text
    }, {
      migrate_data: true
    })
  end

  def self.down
    Amsgrouppicture.drop_translation_table! migrate_data: true
  end
end
