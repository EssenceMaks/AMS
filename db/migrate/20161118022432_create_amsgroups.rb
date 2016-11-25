class CreateAmsgroups < ActiveRecord::Migration
  def change
    create_table :amsgroups do |t|
      t.string :titlerus
      t.text :descriptionrus
      t.integer :category_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
