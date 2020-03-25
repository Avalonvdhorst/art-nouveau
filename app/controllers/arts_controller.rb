class ArtsController < ApplicationController
  def home
  end

  def index
    @arts = Art.all
  end

  def new
    @art = Art.new
  end

  def create
    @art = Art.new(art_params)
    @art.user_id = current_user.id

    if @art.save
      redirect_to art_path(@art)
    else
      render :new
    end
  end

  private

  def art_params
    params.require(:art).permit(:name, :artist, :price_per_week, :description, :photo, :location)
  end
end
