class RegionsController < ApplicationController
  def new
    @region = Region.new
  end

  def show
    @region = Region.find(params[:id])
  end

end
