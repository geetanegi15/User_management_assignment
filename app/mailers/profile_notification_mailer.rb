class ProfileNotificationMailer < ApplicationMailer
  
  def create_notification(object)
    @object = object
    mail to: @object.email , subject: " testing the active mailer gem "
  end
end
