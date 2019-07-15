class UserMailer < ApplicationMailer
  def welcome_send(user)
    @user = user
    @url  = 'https://remojobs.com/users/sign_in'
    mail to: user.email, subject: "Welcome to remojobs.com", from: "hello@remojobs.com"
  end
end
