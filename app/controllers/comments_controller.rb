class CommentsController < ApplicationController
  def new
    @tattoo = Tattoo.find(params[:tattoo_id])

    @comment = Comment.new
  end

  def create
    @tattoo = Tattoo.find(params[:tattoo_id])
    @comment = @tattoo.comments.build(comment_params)
    @comment.user = current_user
    if @comment.save
      redirect_to :back
    else
      render:new
    end

  end

  private

  def comment_params
    params.require(:comment).permit(:comment, :tattoo_id)
  end
end
