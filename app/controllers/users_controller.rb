class UsersController < ApplicationController
  
  skip_before_action :authenticate_user!

  def create
    user = User.new(user_params)
    if user.save
      user.set_api_token
      render json: { name: user.name, api_token: user.api_token }, status: 200
    else
      render json: { error: user.errors.full_messages.first }, status: 422
    end
  end

  private

  def user_params
    params.permit(:name, :email, :password)
  end
  
end