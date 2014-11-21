class VideosController < ApplicationController

  def new
    @video = Video.new
  end

  def create
    @video = Video.new(params_video)
    if @video.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def params_video
    params.require(:video).permit(:name, :url, :artist_id)
  end
end
