class CommentsController < ApplicationController
  def index
  end

  def new_comment
    @new_comment = Comment.new(add_comment)
    if @new_comment.save
      redirect_to topic_path(params[:topic_id])
    else
      flash[:alert] = "Something wrong happened...."
    end
  end

  def delete_comment
    @delete_comment = Comment.find(params[:id]).delete
    redirect_to home_path
  end

  private

  def add_comment
    params.require(:comment).permit(:content, :topic_id, :user_id)
  end

end
