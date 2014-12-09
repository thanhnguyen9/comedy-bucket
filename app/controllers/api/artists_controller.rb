class Api::ArtistsController < ApplicationController

  protect_from_forgery with: :reset_session

  def index
    @artists = Artist.all
    render json: @artists
  end

  def show
    @artist = Artist.find(params[:id])
    @videos = @artist.videos
    render json: @artist
  end
end
