class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  default from: 'decide.for.me.noreply@gmail.com'

  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Move with me confirmation email!')
  end
end
