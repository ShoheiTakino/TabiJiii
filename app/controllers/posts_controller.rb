class PostsController < ApplicationController
  
  
  def index
    @user = User.all
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show
  end
  
  def edit
  end

  def update
  end

  def delete
  end


end
