class RelationshipsController < ApplicationController
	 
   def create
    @user = User.find(params[:relationship][:following_id])
    current_user.follow!(@user)
    redirect_back(fallback_location: user_path(@user))
  end

  def destroy
    @user = Relationship.find(params[:id]).following
    current_user.unfollow!(@user)
    redirect_back(fallback_location: user_path(@user))
  end
end




