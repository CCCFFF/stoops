class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :user_id
      t.integer :table_num
      t.boolean :ticket_close

      t.timestamps
    end
  end
end
