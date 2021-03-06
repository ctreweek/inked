class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @artist = Artist.find(params[:artist_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @artist = Artist.find(params[:artist_id])
    @booking.artist = @artist
    @booking.user = current_user

    if @booking.save
      redirect_to pages_dashboard_path
    else
      render:new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time)
  end
end
