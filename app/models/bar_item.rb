class BarItem < ActiveRecord::Base
   belongs_to :ticket
   belongs_to :bar_menu_item
end
