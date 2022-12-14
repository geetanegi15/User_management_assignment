# Preview all emails at http://localhost:3000/rails/mailers/profile_notification_mailer
class ProfileNotificationMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/profile_notification_mailer/create_notification
  def create_notification
    ProfileNotificationMailer.create_notification
  end

end
