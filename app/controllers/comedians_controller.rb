class ComediansController < ApplicationController

  def create
    @comedian = Comedian.new(params.require(:comedian).permit(:name, :update_comedian))
    @comedian.save
    @comedians = Comedian.all.order("created_at DESC").page params[:page]
  end

end
