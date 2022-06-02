class PostsController < ApplicationController
  
  
  def index
    @user = User.limit(10)
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
    @user = @post
    @chats = Chat.all
    @chat = Chat.new
  end
  
  def edit
    @post = Post.find(params[:id])
    @user = @post
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      @user = Post.all
      @chat = Chat.new
      render :show
    else
      render :edit
    end
  end

  def destroy
    post = Post.find(params[:id])
    if current_user.id == post.user.id
      post.destroy
      redirect_to root_path
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :image, :content, :province_id).merge(user_id: current_user.id)
  end

  def chat_params
    params.require(:chat).permit(:comment).merge(post_id: current_user.id)
  end


end
