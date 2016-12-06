class CreateGroupcategoryTranslations < ActiveRecord::Migration
  def self.up
    Groupcategory.create_translation_table!({
      categoryname: :string
    }, {
      migrate_data: true
    })
  end

  def self.down
    Groupcategory.drop_translation_table! migrate_data: true
  end
end
