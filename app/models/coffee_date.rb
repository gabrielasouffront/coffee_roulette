class CoffeeDate < ActiveRecord::Base
  has_many :guest_lists, dependent: :destroy
  has_many :employees, through: :guest_lists
  belongs_to :month
end
