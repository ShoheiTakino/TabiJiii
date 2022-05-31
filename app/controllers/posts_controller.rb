class PostsController < ApplicationController
  
  
  def index
    @user = User.all.order("created_at DESC")
    @posts = Post.all
  end

  def new
    @post = Post.new
    @user = Post.all
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
    @user = Post.find(params[:id])
  end
  
  def edit
  end

  def update
  end

  def delete
  end

  private
  def post_params
    params.require(:post).permit(:title, :image, :content, :province_id).merge(user_id: current_user.id)
  end


end
