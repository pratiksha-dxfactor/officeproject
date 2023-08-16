class UsersController < ApplicationController
  def index
    @users = user.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new

    if @user.save
      redirect_to @user
    else
      render :new, status: :unprocessable_entity
    end
  end
end