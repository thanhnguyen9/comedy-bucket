class ComediansController < ApplicationController

  def create
    @comedian = Comedian.new(params.require(:comedian).permit(:name))
    @comedian.save
  end

end
