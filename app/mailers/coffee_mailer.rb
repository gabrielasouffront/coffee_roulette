class CoffeeMailer < ApplicationMailer

  # def coffee_pairing(args)
  #   @employee1, @employee2, @employee3 = *args
  #
  #   mail(to: @employee1.email, cc: @employee2.email, subject: 'You two, are going on a date, well sort of.')
  # end
  #
  def coffee_pairing(month, coffee_date)
    binding.pry   
    @employee1, @employee2, @employee3 = *coffee_date.employees
    mail(to: month.employee_emails(coffee_date), subject: 'You two, are going on a date, well sort of.')
  end

end
