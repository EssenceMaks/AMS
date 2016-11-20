class CreateAmsfoodpictures < ActiveRecord::Migration
  def change
    create_table :amsfoodpictures do |t|
      t.string :titlerus
      t.text :descriptionrus
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
