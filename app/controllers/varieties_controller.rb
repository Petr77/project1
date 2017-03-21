class VarietiesController < ApplicationController
  def show
    @variety = Variety.find(params[:id])
  end

  def new
    @variety = Variety.new
    @region_id = params[:region_id]
    render :new
  end

  def create
    @variety = Variety.new(clean_params)
    if @variety.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def clean_params
    params.require(:variety).permit(:name, :region_id)
  end

end
