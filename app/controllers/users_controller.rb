class UsersController < ApplicationController
  before_action :authorize
  def index
    @users = User.all
  end

  def new
  end

  def edit
      @user = User.find(params[:id])
  end

  def update
    @user = User.find(params["id"])
 
    if @user.update(params["user"].permit(:email, :password))
      redirect_to '/admin'
    else
      render 'edit'
    end
  end

  def create
    user = User.new(user_params)
    if user.save
      redirect_to '/users'
    else
      redirect_to '/users/new'
    end
  end

  def destroy
      @user = User.find(params[:id])
      @user.destroy
     
      redirect_to users_path
    end

private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
