class UsersController < ApplicationController
  def new
  end

  def index
    @users = User.paginate(page: params[:page])
  end
end
