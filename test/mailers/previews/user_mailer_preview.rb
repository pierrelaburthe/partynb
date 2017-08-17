# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/host_mail_confirmation
  def host_mail_confirmation
    # UserMailer.host_mail_confirmation
    user = User.first
    UserMailer.host_mail_confirmation(user)
  end

end
