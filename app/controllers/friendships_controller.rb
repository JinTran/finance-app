class FriendshipsController < ApplicationController

  def destroy
    @friendship = current_user.friendships.where(friend_id: params[:id]).first
    @friendship.destroy
    flash[:notice] = "Friend removed"
    redirect_to my_friends_path
    # respond_to do |format|
    #   format.js  { render partial: 'friends/result'}
    # end
  end

end