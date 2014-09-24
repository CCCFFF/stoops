class CreateBarMenuItems < ActiveRecord::Migration
  def change
    create_table :bar_menu_items do |t|
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end
