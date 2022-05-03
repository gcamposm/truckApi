class PasswordController < ApplicationController
  def reset
    token = request.query_parameters['token']
    user = User.find_by(reset: token)
    raise 'user not found' if user.blank?

    if password
      user.password = password
      user.save
    end
    render json: { message: 'Successfully change password' }
  rescue StandardError => e
    render_rescue(e)
  end

  def forgot
    raise 'email is not given in params' if email.blank?

    user = User.find_by(email: email)
    raise 'user not found' if user.blank?

    token = SecureRandom.hex(10)
    user.reset = token
    user.save
    ResetMailer.with(user: user).reset_password

    render json: { token: token }
  rescue StandardError => e
    render_rescue(e)
  end

  private

  def password
    params['password']
  end

  def email
    params['email']
  end
end
