class UsersController < ApplicationController
  def new
  end

  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
  end

end
