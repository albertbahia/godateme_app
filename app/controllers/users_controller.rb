class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.all
    render status: 200, json: @users.to_json

  end

  def show
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to :back, :alert => "Access denied."
    end
    render status: 200, json: @user.to_json
  end

end
