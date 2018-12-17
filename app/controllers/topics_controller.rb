class TopicsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @user = current_user
  end

  def create
    @new_topic = Topic.new(new_topic)
    if @new_topic.save
      redirect_to home_path
    else
      redirect_to :back
    end
  end

  def destroy
  end

  private

    def new_topic
      params.require(:topic).permit(:title, :subject, :content, :user_id)
    end
end
