class Ticket < ActiveRecord::Base
  belongs_to :user
  has_many :kitchen_items
  has_many :bar_items
end
