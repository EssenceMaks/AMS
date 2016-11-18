class CreateAmsstones < ActiveRecord::Migration
  def change
    create_table :amsstones do |t|
      t.string :titlerus
      t.string :titleeng
      t.string :titlear
      t.string :number
      t.text :descriptionrus
      t.text :descriptioneng
      t.text :descriptionar
      t.integer :category
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
