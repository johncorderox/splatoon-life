class CommentsController < ApplicationController
  def index
  end

  def new_comment
    @new_comment = Comment.new(add_comment)

    if @new_comment.save
      redirect_to '/home'
    else
      flash[:alert] = "Comment is needed!"
      redirect_to '/home'
    end
  end

  private

  def add_comment
  params.require(:comment).permit(:content, :topic_id, :user_id)
  end


end
