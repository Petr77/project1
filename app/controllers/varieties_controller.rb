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
    @variety = Variety.new( clean_params )
    if @variety.save
      # append this new variety to the list of varities for this region
      # (we need to do this because of the many-to-many relationship between
      # varities and regions, i.e. join table)
      region = Region.find params[:variety][:region_id]
      region.varieties << @variety

      redirect_to region_path params[:variety][:region_id]
    else
      render :new
    end
  end

  def edit
    @variety = Variety.find(params[:id])

    @region_id = params[:region_id]
    @variety_id = params[:variety_id]

  end

  def update
    @variety = Variety.find(params[:id])
    if @variety.update_attributes(clean_params)
      redirect_to wine_region_varieties_path( region_id: params[:region_id], variety_id: params[:variety_id] )
    else
      render :edit
    end
  end

  def destroy
    @variety = Variety.find(params[:id]).destroy
    redirect_to root_path
  end

  private

  def clean_params
    params.require(:variety).permit(:name)
  end

end
