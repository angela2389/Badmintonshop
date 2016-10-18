class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

 def welcome_email(user)
   @user = user
   @url  = 'https://badmintonshop.herokuapp.com/users/sign_in'
   mail(to: @user.email, subject: 'Welcome to My Awesome Site')
 end
end
