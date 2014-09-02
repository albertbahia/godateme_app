class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    current_user.find_matches
    @users = Match.where(user_id1: current_user.id)
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
