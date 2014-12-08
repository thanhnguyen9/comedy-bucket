class Api::VideosController < ApplicationController

  protect_from_forgery with: :reset_session

  def index
    @videos = Video.all
    render json: @videos
  end

  def show
    @video = Video.find(params[:id])
    render json: @video
  end

end
