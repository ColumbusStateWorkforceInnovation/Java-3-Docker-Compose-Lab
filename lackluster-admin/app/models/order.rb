class Order < ApplicationRecord
  belongs_to :employee
  belongs_to :customer
  has_many :order_line_items
end
