class CreateBarItems < ActiveRecord::Migration
  def change
    create_table :bar_items do |t|
      t.integer :ticket_id
      t.integer :bar_menu_item_id
      t.boolean :bar_closeout

      t.timestamps
    end
  end
end
