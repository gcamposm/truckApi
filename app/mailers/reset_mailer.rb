class ResetMailer < ApplicationMailer
  def reset_password
    @user = params[:user]
    @url = "#{Rails.configuration.api_endpoint}/password/reset?token=" + params[:token]
    mail(to: @user.email, subject: 'Reset password for Truck Api')
  end
end
