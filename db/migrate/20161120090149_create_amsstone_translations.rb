class CreateAmsstoneTranslations < ActiveRecord::Migration
  def self.up
    Amsstone.create_translation_table!({
      titlerus: :string,
      descriptionrus: :text
    }, {
      migrate_data: true
    })
  end

  def self.down
    Amsstone.drop_translation_table! migrate_data: true
  end
end
