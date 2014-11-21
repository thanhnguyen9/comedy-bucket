class Api::ArtistsController < ApplicationController

  protect_from_forgery with: :null_exception

  def index
    @artists = Artist.all
    render json: @artists
  end
  
  def create
    @artist = Artist.new(params.require(:artists).permit(:name))
    @artist.save
    render json: @artist
  end

  def update
    @artist = Artist.find(params[:id])
    @artis = Artist.update(params.require(:artists).permit(:name))
    render json @artist
  end


end
