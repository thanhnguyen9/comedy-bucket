class ComediansController < ApplicationController

  def create
    @comedian = Comedian.new(params.require(:comedian).permit(:name))
    @comedian.save
    @comedians = Comedian.all.order("created_at DESC")
  end

end
