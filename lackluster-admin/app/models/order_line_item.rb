class OrderLineItem < ApplicationRecord
  belongs_to :order
  belongs_to :rental
end
