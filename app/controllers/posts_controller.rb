class PostsController < ApplicationController

  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show, :search]
  
  def index
    @posts = Post.order("created_at DESC").page(params[:page]).per(12)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  def show
    post_cat = @post.category 
    @posts = Post.where(category_id: post_cat).order("created_at DESC").limit(5)
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to action: :show
    else
      render action: :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :category_id, :model_name, :model_url, :text, :image)
  end

  def set_post
    @post = Post.find(params[:id])
  end

end
