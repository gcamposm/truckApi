class UsersController < ApplicationController
  def new
  end

  def create
    user = User.new(
      username: username,
      password: password
    )
    raise 'error when create user' unless user.save

    render json: { message: 'user created successfully' }
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
