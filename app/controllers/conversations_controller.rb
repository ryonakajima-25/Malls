class ConversationsController < ApplicationController
  before_action :authenticate_user!
  def create
    @conversation = Conversation.create
    @entry1 = Entry.create(:conversation_id => @conversation.id, :user_id => current_user.id)
    @entry2 = Entry.create(params.require(:entry).permit(:user_id, :conversation_id).merge(:conversation_id => @conversation.id))
    redirect_to "/conversations/#{@conversation.id}"
  end

  def show
    @conversation = Conversation.find(params[:id])
    if Entry.where(:user_id => current_user.id, :conversation_id => @conversation.id).present?
      @messages = @conversation.messages
      @message = Message.new
      @entries = @conversation.entries
    else
      redirect_back(fallback_location: root_path)
    end
  end
end