class CreateStonecategoryTranslations < ActiveRecord::Migration
    def self.up
    Stonecategory.create_translation_table!({
      categoryname: :string
    }, {
      migrate_data: true
    })
  end

  def self.down
    Stonecategory.drop_translation_table! migrate_data: true
  end
end
