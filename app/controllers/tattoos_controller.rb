class TattoosController < ApplicationController
  skip_before_action :authenticate_user!
  def show
    @tattoo = Tattoo.find(params[:id])
  end
end
