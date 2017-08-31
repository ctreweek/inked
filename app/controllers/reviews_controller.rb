class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @artist = Artist.find(params[:artist_id])
    @review.artist = @artist
    @review.user = current_user
  end

  def create
    @review = Review.new(review_params)
    @artist = Artist.find(params[:artist_id])
    @review.artist = @artist
    @review.user = current_user

    if @review.save
      redirect_to artist_path(@artist)
    else
      render :new
    end

  end

  private

  def review_params
    params.require(:review).permit(:content, :artist_id, :user_id)
  end

end
