class PostsController < ApplicationController
  
  def index
    @posts = Post.order("created_at DESC")
  end

  private

  def post_params
    params.require(:post).permit(:title, :category_id, :model_name, :model_url, :text, :image)
  end

end
