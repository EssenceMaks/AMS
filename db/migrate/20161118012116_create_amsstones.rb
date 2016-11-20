class CreateAmsstones < ActiveRecord::Migration
  def change
    create_table :amsstones do |t|
      t.string :titlerus
      t.string :number
      t.text :descriptionrus
      t.integer :category
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
