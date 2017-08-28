class TattoosController < ApplicationController
  skip_before_action :authenticate_user!

  def show
    @tattoo = Tattoo.find(params[:id])
  end

  def new
    @tattoo = Tattoo.new
  end

  def create
    @tattoo = Tattoo.new
    @tattoo.artist = current_artist
    if @tattoo.save
      redirect_to pages_dashboard_path
    else
      render:new
    end
  end

  private

  def tattoo_params
    params.require(:tattoo).permit(:photo)
  end
end
