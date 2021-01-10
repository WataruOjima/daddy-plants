class PostsController < ApplicationController

  def index
    @posts = Post.includes(:user)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
  end 


  private

  def post_params
    params.require(:post).permit(:title, :catch_copy, :concept, :image).merge(user_id: current_user.id)
  end

end
