class CreateKitchenItems < ActiveRecord::Migration
  def change
    create_table :kitchen_items do |t|
      t.integer :kitchen_menu_item_id
      t.integer :ticket_id
      t.boolean :kitchen_closeout

      t.timestamps
    end
  end
end
