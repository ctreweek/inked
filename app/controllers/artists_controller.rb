class ArtistsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @artists = Artist.all
    @cities = []
    @artists.each do |artist|
      @cities << artist.city
    end
    @cities = @cities.uniq
  end

  def show
    @artist = Artist.find(params[:id])
    @booking = Booking.new
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    if @artist.update_attributes(artist_params)
        flash[:notice] = 'You have successfully added your photo'
        redirect_to pages_dashboard_path
    end
  end



  private

  def artist_params
      params.require(:artist).permit(:name, :city, :info, :photos)
  end

end
