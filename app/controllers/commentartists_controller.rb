class CommentartistsController < ApplicationController

  def create
    @comment = Commentartist.new(params.require(:commentartist).permit(:post, :user_id, :artist_id))
    if @comment.save
      redirect_to artist_path(id: @comment.artist_id)
    end
  end
end
