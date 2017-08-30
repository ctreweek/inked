class TattoosController < ApplicationController
  skip_before_action :authenticate_user!

  def show
    @tattoo = Tattoo.find(params[:id])
    @comments = @tattoo.comments.all
    @comment = @tattoo.comments.build
  end


  def new
    @tattoo = Tattoo.new
  end

  def create
    @tattoo = Tattoo.new(tattoo_params)
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
