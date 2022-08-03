class FriendshipsController < ApplicationController
  def index
    @friends = current_user.friends
  end

  def search
    respond_to do |format|    
      if params[:friend].present?
        @friends_s = User.search(params[:friend])
        @friends_s = current_user.expect_current_user(@friends_s)  
        if !@friends_s
          flash.now[:alert] = "Please enter a valid user to search"
        end
      else
        flash.now[:alert] = "Please enter a user to search"
      end
      format.turbo_stream { render turbo_stream: turbo_stream.update('results', partial: 'friendships/results') }
    end
  end

  def create
    friend = User.find(params[:friend])
    current_user.friendships.build(friend_id: friend.id)
    if current_user.save
      flash[:notice] = "Following user successfully"
    else
      flash[:erorr] = "Something wrong with the tracking request"
    end
    redirect_to friendships_path
  end

  def destroy
    friend = User.find(params[:id])
    user_friend = Friendship.where(user_id: current_user.id, friend_id: friend.id).first
    user_friend.destroy
    flash[:notice] = "#{friend.email} was successfully unfollowed"
    redirect_to friendships_path
  end
end