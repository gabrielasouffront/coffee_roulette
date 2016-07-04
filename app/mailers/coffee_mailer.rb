class CoffeeMailer < ApplicationMailer

  def coffee_pairing(user)
    @user = user
    mail(to: @user.email, subject: 'Sample Email')
  end

end
