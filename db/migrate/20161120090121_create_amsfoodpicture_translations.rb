class CreateAmsfoodpictureTranslations < ActiveRecord::Migration
  def self.up
    Amsfoodpicture.create_translation_table!({
      titlerus: :string,
      descriptionrus: :text
    }, {
      migrate_data: true
    })
  end

  def self.down
    Amsfoodpicture.drop_translation_table! migrate_data: true
  end
end
