class AddFriendCodeToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :friend_code, :string
  end
end
