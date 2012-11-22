class UsersController < ApplicationController
  def new
  	@user = User.new
  end
  def show
    if signed_in?
      @user = User.find(params[:id])
    else
      redirect_to root_path
    end
  end
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
      sign_in @user
    else
      render 'new'
    end
  end
end
