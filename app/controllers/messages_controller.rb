class MessagesController < ApplicationController
  before_action :authenticate_user!, only: :create

  def create
    if Entry.where(user_id: current_user.id, conversation_id: params[:message][:conversation_id]).present?
      @message = Message.create(params.require(:message).permit(:user_id, :content, :conversation_id).merge(user_id: current_user.id))
      redirect_to "/conversations/#{@message.conversation_id}"
    else
      redirect_back(fallback_location: root_path)
    end
  end
end