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

  def update
    @artist = Artist.find(params[:id])
    @artis = Artist.update(params.require(:artists).permit(:name))
    render @artist
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.delete
    render json: {ok: true}
  end
end
