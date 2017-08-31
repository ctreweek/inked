class ConversationsController < ApplicationController

  def index
    @conversations = Conversation.all
  end

  def create
   @conversation = Conversation.create!(conversation_params)
  end

  private

  def conversation_params
    params.require(:conversation).permit(:artist_id, :user_id)
  end
end

