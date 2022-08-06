class LikesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @like = @post.likes.build(user_id: current_user.id)
    @like.save
    redirect_to root_path
  end
  def delete
    @post = Post.find(params[:post_id])
    @like = @post.likes.find_by(user_id: current_user.id)
    @like.destroy
    redirect_to root_path
  end
end
