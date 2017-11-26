class CitiesController < ApplicationController
  def new
  end

  def index
    @cities = City.paginate(:page => params[:page], :per_page => 3)
  end

  def show
    @city = City.find(params[:id])
  end

end
