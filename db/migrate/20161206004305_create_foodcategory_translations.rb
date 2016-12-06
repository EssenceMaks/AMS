class CreateFoodcategoryTranslations < ActiveRecord::Migration
    def self.up
    Foodcategory.create_translation_table!({
      categoryname: :string
    }, {
      migrate_data: true
    })
  end

  def self.down
    Foodcategory.drop_translation_table! migrate_data: true
  end
end
