module HomeHelper
  def user_username(user)
    user.username if user && user.username.present?
  end
end
