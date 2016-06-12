class Employee < ActiveRecord::Base
  belongs_to :department
  has_many :guest_lists
  has_many :coffee_dates, through: :guest_lists
end
