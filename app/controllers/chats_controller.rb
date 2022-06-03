class ChatsController < ApplicationController
  
  def new
    @chat = Chat.new
    @post = Post.find(params[:post_id])
  end

  def create
    @post = Post.find(params[:post_id])
    @chats = @post.chats.new(chat_params)
    @chats.save
  end

  private 
  def chat_params
    params.permit(:comment).merge(user_id: current_user.id)
  end

end
