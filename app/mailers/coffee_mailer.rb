class CoffeeMailer < ApplicationMailer

  def coffee_pairing(*args)
      # @employee1 = employee1
      # @employee2 = employee2
      @employee1, @employee2 = *args
    mail(to: @employee1.email, cc: @employee2.email, subject: 'You two, are going on a date, well sort of.')
  end

end
