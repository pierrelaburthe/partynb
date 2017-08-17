class UserMailer < ApplicationMailer
  def host_mail_confirmation(user)
    @user = user
    mail(to: @user.email, subject: 'you are now a host')
  end
end

