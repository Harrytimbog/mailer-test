class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  default from: 'movewithmerio@gmail.com'

  def welcome
    @user = params[:user] # Instance variable => available in view
    mail(to: @user.email, subject: 'Move with me confirmation email!')
  end
end
