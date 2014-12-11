class CommentartistsController < ApplicationController

  def create
    @comment = Commentartist.new(params.require(:commentartist).permit(:post, :user_id, :artist_id))
    @comment.save
    @artist = @comment.artist
    @comments = Commentartist.order("created_at DESC")
  end
end
