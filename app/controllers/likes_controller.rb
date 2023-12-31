# : true

# : true

class LikesController < ApplicationController
  def new
    @like = Like.new
  end

  def create
    @like = Like.new(user_id: current_user.id, post_id: params[:post_id])

    if @like.save
      flash[:notice] = 'Your like was saved successfully'
    else
      flash[:alert] = 'please try again.'
    end
    redirect_to @user = User.find(params[:post_id])
  end
end
