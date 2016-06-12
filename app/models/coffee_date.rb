class CoffeeDate < ActiveRecord::Base
  has_many :guest_lists
  has_many :employees, through: :guest_lists
end
