class Api::SchedulesController < ApplicationController

  protect_from_forgery with: :reset_session

  def index
    @schedules = Schedule.all
    render json: @schedules
  end

  def search
    @artist = Artist.find_by(name: params[:name])
    @schedule = @artist.schedules
    @schedule = artist.schedules.find_by(name: params[:name])
    render json: @schedule
  end
end
