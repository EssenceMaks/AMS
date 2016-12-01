class CreateAmsgroups < ActiveRecord::Migration
  def change
    create_table :amsgroups do |t|
      t.string :titlerus
      t.text :descriptionrus
      t.integer :groupcategory_id
      t.integer :user_id
      t.integer :amsgroups_id

      t.timestamps null: false
    end
  end
end
