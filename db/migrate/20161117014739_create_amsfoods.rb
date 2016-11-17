class CreateAmsfoods < ActiveRecord::Migration
  def change
    create_table :amsfoods do |t|
      t.string :titlerus
      t.string :titleeng
      t.string :titlear
      t.text :descriptionrus
      t.text :descriptioneng
      t.text :descriptionar
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
