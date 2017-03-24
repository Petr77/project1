class WinesController < ApplicationController
  before_action :authenticate_user, only: [:create, :edit, :update, :destroy]

  def show
    @wine = Wine.find(params[:id])
  end

  def index
    # for listing ALL wines
  end

  def region_variety_index
    @region = Region.find params[:region_id]
    @variety = Variety.find params[:variety_id]

    @wines = Wine.where(region_id: params[:region_id], variety_id: params[:variety_id])
  end

  def new
    @wine = Wine.new
    @variety_id = params[:variety_id]
    @region_id = params[:region_id]
  end

  def create
    @wine = Wine.new(clean_params)

    @wine.user = @current_user

    # raise
    if params[:file].present?
       # Then call Cloudinary's upload method, passing in the file in params
       req = Cloudinary::Uploader.upload(params[:file])
       # Using the public_id allows us to use Cloudinary's powerful image transformation methods.
       @wine.image = req["public_id"]
     end

    if @wine.save
      redirect_to wine_region_varieties_path(@wine.region_id, @wine.variety_id)
    else
      render :new
    end
  end

  def edit
    @wine = Wine.find(params[:id])
  end

  def update
    @wine = Wine.find(params[:id])

    if params[:file].present?
       req = Cloudinary::Uploader.upload(params[:file])
       @wine.image = req["public_id"]
     end

    if @wine.update_attributes(clean_params)
      redirect_to wine_path(@wine)
    else
      render :edit
    end
  end

  def destroy
    @wine = Wine.find(params[:id]).destroy
    redirect_to wine_region_varieties_path(@wine.region_id, @wine.variety_id)
  end

  private

  def clean_params
    params.require(:wine).permit(:name, :variety_id, :region_id, :description)
  end

end
