class UserMailer < ApplicationMailer
    default from: "traveldiarywebapp@gmail.com"

  def account_activation(user)
    @user = user
    mail to: user.email,from: "traveldiarywebapp@gmail.com", subject: "Attiva account"
  end

  def password_reset(user)
    @user = user
    mail to: user.email,from: "traveldiarywebapp@gmail.com", subject: "Cambia password"
  end
end
