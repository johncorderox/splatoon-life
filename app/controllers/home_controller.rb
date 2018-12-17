class HomeController < ApplicationController

  before_action :authenticate_user!

  def index
    @user    = current_user
    @topics  = Topic.joins(:user)
               .select("topics.id AS topics_id, topics.title AS topics_title, topics.subject AS topics_subject, topics.content AS topics_content, users.email AS users_email")
               .order(created_at: :desc)
               .limit(10)
  end
end
