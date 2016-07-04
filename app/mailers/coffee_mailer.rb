class CoffeeMailer < ApplicationMailer

  def coffee_pairing(employee1, employee2)
    @employee1 = employee1
    @employee2 = employee2

    mail(to: @employee1.email, subject: 'Sample Email')
  end

end
