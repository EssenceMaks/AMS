class CreateGroupcategories < ActiveRecord::Migration
  def change
    create_table :groupcategories do |t|
      t.string :categoryname
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
