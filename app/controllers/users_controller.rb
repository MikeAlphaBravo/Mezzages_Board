class UsersController < ApplicationController

  def index
    @users = User.all
    json_response(@users)
  end

  def show
    @user = User.find(params[:id])
    json_response(@user)
  end

  def create
    @user = User.create!(user_params)
    json_response(@user, :created)
  end

  def update
    @user = User.find(params[:id])
    @user.update!(user_params)
    render status: 200, json: {
      message: "Your user has been updated successfully."
    }
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    render status: 200, json: {
      message: "Your user has been deleted successfully."
    }
  end

  private

  def user_params
    params.permit(:name)
  end
end
