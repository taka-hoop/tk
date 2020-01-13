class MypageController < ApplicationController
  def show
    @nicname = current_user.nickname
    @messages = current_user.messages
  end
end
