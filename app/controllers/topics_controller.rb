class TopicsController < ApplicationController
  before_action :authenticate_user!


  def index
  end

  def show
    @topic = Topic.find(params[:id])
    @comments = Comment.where(topic_id: params[:id])
                .order(created_at: :desc)
                .limit(10)
  end

  def new
    @user = current_user
  end

  def update
    @update_topic = Topic.find(params[:id])
    if @update_topic.update(update_topic)
      redirect_to home_path
      flash[:notice] = "Topic Updated!"
    else
      redirect_to :back, flash[:alert] = "There was a problem updating the topic!"
    end
  end

  def create
    @new_topic = Topic.new(new_topic)
    if @new_topic.save
      redirect_to home_path
      flash[:notice] = "New topic created!"
    else
      redirect_to :back
    end
  end

  def edit
    @edit_topic = Topic.find(params[:id])
    redirect_to home_path, alert: "You do not have access to view this page!" unless current_user.id == @edit_topic.user_id
  end

  def destroy
    Topic.find(params[:id]).destroy
    redirect_to home_path, notice: "Topic Deleted!"
  end


  private

    def new_topic
      params.require(:topic).permit(:title, :subject, :content, :user_id)
    end

    def update_topic
      params.require(:topic_u).permit(:topic_id, :title, :subject, :content)
    end

end
