class UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end

  def update
    user = User.find params[:id]
    user.update #stuff
    render json: user
  end
end
