class SubmitController < ApplicationController
  before_action :set_group

  def index
    @submit = Submit.new
    @submits = @group.submits.includes(:user)
  end

  def create
    @submit = @group.submits.new(submit_params)
    if @submit.save
      redirect_to group_submits_path(@group), notice: "メッセージが送信されました"
    else
      @submits = @group.submits.includes(:user)
      flash.now[:alert] = "メッセージを入力してください"
      render :index
    end
  end

  private

  def submit_params
    params.require(:submit).permit(:content, :image).merge(user_id: current_user.id)
  end

  def set_group
    @group = Group.find(params[:group_id])
  end
end
