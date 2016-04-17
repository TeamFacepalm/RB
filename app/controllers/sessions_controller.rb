class SessionsController < ApplicationController
  before_action :authenticate!, only: [:check_auth]

  def create
    @user = User.find_by!(email: params['email'])
    if @user.authenticate(params['password'])
      render json: { user: @user.as_json(only: [:email, :auth_token]) },
             status: :ok
    else
      render json: { message: 'Invalid email or password.' },
             status: :unauthorized
    end
  end

  def check_auth
    if logged_in_user
      render json: { message: 'Successfully logged in #{logged_in_user.email}.' },
             status: :ok
    else
      render json: { message: 'Invalid authorization' },
             status: :unauthorized
    end
  end

  def destroy
    session[:user_id] = nil
      render json: { message: 'Successfully logged out' },
             status: :ok
  end
end
