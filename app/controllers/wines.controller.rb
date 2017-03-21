class WinesController < ApplicationController
  def new
    @wines = Wine.new
  end

  def create
    @wines = Wine.new
  end


end
