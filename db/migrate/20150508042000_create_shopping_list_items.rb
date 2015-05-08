class CreateShoppingListItems < ActiveRecord::Migration
  def change
    create_table :shopping_list_items do |t|
      t.string :name
      t.boolean :need

      t.timestamps
    end
  end
end
