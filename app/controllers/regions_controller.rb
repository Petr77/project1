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

  def edit
    @region = Region.find(params[:id])
  end

  def update
    @region = Region.find(params[:id])
    if @region.update_attributes(clean_params)
      redirect_to country_path @region.country
    else
      render :edit
    end
  end

  def destroy
    @region = Region.find(params[:id]).destroy
    redirect_to country_path @region.country
  end

  private

  def clean_params
    params.require(:region).permit(:name, :country_id, :description)
  end

end
