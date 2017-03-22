class CountriesController < ApplicationController
  before_action :authenticate_user, only: [:edit, :update, :destroy]

  def index
    @country = Country.all.order :name
  end

  def new
    @country = Country.new
  end

  def create
    @country = Country.new(clean_params)
    if @country.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @country = Country.find(params[:id])
  end

  def destroy
    @country = Country.find(params[:id]).destroy
    redirect_to root_path
  end

  def edit
    @country = Country.find(params[:id])
  end

  def update
    @country = Country.find(params[:id])
    if @country.update_attributes(clean_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def clean_params
    params.require(:country).permit(:name)
  end

end
