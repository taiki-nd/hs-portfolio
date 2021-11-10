class StaticpagesController < ApplicationController
  def top
    @posts = Post.order("created_at DESC").limit(8)
  end
end
