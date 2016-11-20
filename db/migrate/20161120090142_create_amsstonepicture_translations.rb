class CreateAmsstonepictureTranslations < ActiveRecord::Migration
  def self.up
    Amsstonepicture.create_translation_table!({
      titlerus: :string,
      descriptionrus: :text
    }, {
      migrate_data: true
    })
  end

  def self.down
    Amsstonepicture.drop_translation_table! migrate_data: true
  end
end
