class RegionsController < ApplicationController

  def show
    @region = Region.find(params[:id])
  end

  def new
    @region = Region.new
    @country_id = params[:country_id]
    render :new
  end

  def create
    @region = Region.new(clean_params)
    if @region.save
      redirect_to country_path @region.country
    else
      render :new
    end
  end

  private

  def clean_params
    params.require(:region).permit(:name, :country_id)
  end

end
