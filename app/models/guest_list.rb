class GuestList < ActiveRecord::Base
  belongs_to :employees
  belongs_to :coffee_dates
  delegate :department, to: :employee
end
