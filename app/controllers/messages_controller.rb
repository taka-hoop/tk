class MessagesController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
    @messages = Message.all.order("created_at DESC").page(params[:page]).per(20)
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

  def destroy
    message = Message.find(params[:id])
    message.destroy
    redirect_to root_path
  end


  private
  def message_params
    params.require(:message).permit(:title, :content, :image, :area_id, :type_id).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to messages_path unless user_signed_in?
  end



end
