class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :dashboard]

  def home
    @cities = get_cities
    @artists = Artist.all
  end

  def get_cities
    @cities = ["Choose a city"]
    @artists = Artist.all
    @artists.each do |artist|
    @cities << artist.city
    end
    @cities.uniq
  end

end
