class ComediansController < ApplicationController

  def create
    @comedian = Comedian.new(params.require(:comedian).permit(:name))
    if @comedian.save
      redirect_to root_path, notice: "Successfully Added"
    else
      redirect_to root_path
    end
  end

end
