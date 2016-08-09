class Month < ActiveRecord::Base
  has_many :coffee_dates
  has_many :guest_lists, through: :coffee_dates
  has_many :employees, through: :guest_lists


  def employee_emails(coffee_date)
    coffee_date.employees
      .pluck(:email)
        .join(';')
  end
end
