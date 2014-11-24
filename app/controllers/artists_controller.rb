class ArtistsController < ApplicationController
  def index
    @artists = Artist.order(:name)
    @artists = Artist.search_by_name(params[:search]) if params[:search].present?
  end

  def show
    @artist = Artist.find(params[:id])
    @schedules = Schedule.where(:artist_id => @artist.id).order(:time)
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(params_artist)
    if @artist.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def params_artist
    params.require(:artist).permit(:name)
  end
end
