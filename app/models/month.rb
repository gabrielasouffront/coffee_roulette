class Month < ActiveRecord::Base
  has_many :coffee_dates
  has_many :guest_lits, through: :coffee_dates
  has_many :employees, through: :guest_lits
end
