class Api::VideosController < ApplicationController

  protect_from_forgery with: :reset_session

  def index
    @videos = Video.all
    render json: @videos
  end

  def create
    @video = Video.new(params.require(:videos).permit(:url, :artist_id))
    @video.save
    render json: @video
  end

  def update
    @video = Video.find(params[:id])
    @artis = Video.update(params.require(:videos).permit(:url, :artist_id))
    render @video
  end

  def destroy
    @video = Video.find(params[:id])
    @video.delete
    render json: {ok: true}
  end
end
