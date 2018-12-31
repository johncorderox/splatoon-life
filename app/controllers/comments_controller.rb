class CommentsController < ApplicationController
  def index
  end

  def create
    @new_comment = Comment.new(add_comment)
    if @new_comment.save
      redirect_to :back
    else
      redirect_to :back,
    end

  end

  private
    def add_comment
      params.require(:comment).permit(:content, :topic_id, :user_id )
    end
end
