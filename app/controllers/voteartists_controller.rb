class VoteartistsController < ApplicationController
  def create
    @vote = Voteartist.new(user_id: current_user.id, artist_id: params[:artist_id])
    @vote.save
    @votes = Voteartist.all
    @artist = Artist.find_by(id: @vote.artist_id)
    @artist.likes += 1
    @artist.save
  end

  def destroy
    @vote = Voteartist.find_by(user_id: params[:user_id], artist_id: params[:artist_id])
    @artist = Artist.find_by(id: @vote.artist_id)
    @artist.likes -= 1
    @artist.save
    @vote.delete
  end
end
