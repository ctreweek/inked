class ConversationsController < ApplicationController

  def index
    @conversations = Conversation.all
  end

  def create
    if Conversation.between(params[:sender_id],params[:recipient_id]).present?
      @conversation = Conversation.between(params[:sender_id],params[:recipient_id]).first
    else
      @conversation = Conversation.create!(conversation_params)
    end
  end

  private

  def conversation_params
    params.require(:conversation).permit(:artist_id, :user_id)
  end
end

