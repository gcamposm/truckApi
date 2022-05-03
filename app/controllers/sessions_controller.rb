class SessionsController < ApplicationController
  def create
    user = User.find_by(username: username)
    raise 'user not found' if user.blank?
    raise 'unauthorized' unless user.authenticate(password)

    render json: { message: 'Successfully Logged In' }
  rescue StandardError => e
    render_rescue(e)
  end

  private

  def username
    params[:username]
  end

  def password
    params[:password]
  end
end
