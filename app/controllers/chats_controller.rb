class ChatsController < ApplicationController
  
  def new
    @chat = Chat.new
    @post = Post.find(params[:post_id])
  end

  def create
    @chat = Chat.new
    @post = Post.find(params[:post_id])
    @chat = @post.chats.new(chat_params)
    @chat.save
  end

  private 
  def chat_params
    params.require(:chat).permit(:comment).merge(user_id: current_user.id)
  end

end
