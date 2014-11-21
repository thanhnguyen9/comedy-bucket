class Api::ArtistsController < ApplicationController

  protect_from_forgery with: :reset_session

  def index
    @artists = Artist.all
    render json: @artists
  end

  def create
    @artist = Artist.new(params.require(:artists).permit(:name))
    @artist.save
    render json: @artist
  end
end
