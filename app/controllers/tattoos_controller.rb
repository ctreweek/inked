class TattoosController < ApplicationController
  def show
    @tattoo = Tattoo.find(params[:id])
  end
end
