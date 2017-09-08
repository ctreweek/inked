class ConversationsController < ApplicationController

  def index
    @conversations = Conversation.all
  end

  def create
    if Conversation.between(params[:user_id],params[:artist_id]).present?
      @conversation = Conversation.between(params[:user_id],params[:artist_id]).first
      redirect_to conversation_messages_path(@conversation)
    else
      @conversation = Conversation.create!(conversation_params)
    end
  end

  private

  def conversation_params
    params.permit(:artist_id, :user_id)
  end
end

