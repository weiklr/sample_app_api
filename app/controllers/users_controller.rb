class UsersController < ApplicationController
  before_action :init_todo, only: %i[show update destroy]

  def index
    @users = User.all
    json_response(UserSerializer.new(@users))
  end

  def show
    json_response(@user)
  end

  private

  def users_params
    params.require(:user).permit(:name, :password)
  end

  def init_todo
    @user = User.find_by(id: params[:id])
  end
end
