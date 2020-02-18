class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @currentUserEntry = Entry.where(user_id: current_user.id)
    @userEntry = Entry.where(user_id: @user.id)
    unless @user.id == current_user.id
      @currentUserEntry.each do |cu|
        @userEntry.each do |u|
          if cu.conversation_id == u.conversation_id then
            @isConversation = true
            @conversationId = cu.conversation_id
          end
        end
      end
      unless @isConversation
        @conversation = Conversation.new
        @entry = Entry.new
      end
    end
    if @user.genre == "developer"
      @spaces = @user.spaces
    else
      @brands = @user.brands
    end
  end
end
