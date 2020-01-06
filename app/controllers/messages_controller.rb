class MessagesController < ApplicationController
  def index
    @messages = Message.all.order("created_at DESC").page(params[:page]).per(5)
  end

  def new
    @message = Message.new
  end

  def create
    Message.create(message_params)
    redirect_to root_path
  end

  def show
    @message = Message.find(params[:id])
  end

  def edit
    @message = Message.find(params[:id])
  end

  def update
    message = Message.find(params[:id])
    message.update(post_params)
    redirect_to root_path
  end

  def destroy
    message = Message.find(params[:id])
    message.destroy
    redirect_to root_path
  end


  private
  def message_params
    params.require(:message).permit(:title, :content, :image)
  end


end
