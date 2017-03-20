class VarietiesController < ApplicationController
  def show
    @variety = Variety.find(params[:id])
  end

  def new
    @variety = Variety.new
  end
end
