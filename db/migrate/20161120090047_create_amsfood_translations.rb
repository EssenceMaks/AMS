class CreateAmsfoodTranslations < ActiveRecord::Migration
  def self.up
    Amsfood.create_translation_table!({
      :titlerus => :string,
      :descriptionrus => :text
    }, {
      :migrate_data => true
    })
  end

  def self.down
    Amsfood.drop_translation_table! :migrate_data => true
  end
end
