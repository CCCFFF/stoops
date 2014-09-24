class KitchenItem < ActiveRecord::Base
  belongs_to :ticket
  belongs_to :kitchen_menu_item
end
