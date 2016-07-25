class Month < ActiveRecord::Base
  has_many :coffee_dates
  has_many :guest_lits, through: :coffee_dates
  has_many :employees, through: :guest_lits


  def employee_emails(coffee_date)
    binding.pry
    coffee_date.employees
      .pluck(:email)
        .join(';')
  end
end
