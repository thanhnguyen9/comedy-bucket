class Api::SchedulesController < ApplicationController

  protect_from_forgery with: :reset_session

  def index
    @schedules = Schedule.all
    render json: @schedules
  end

  def show
    @schedule = Schedule.find(params[:id])
    render json: @schedule
  end
end
