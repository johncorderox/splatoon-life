class AddToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    add_column :users, :favorite_weapon, :string
    add_column :users, :splatoon_game, :string
    add_column :users, :timezone, :string
    add_column :users, :voice_chat, :boolean
    add_column :users, :language, :string
  end
end
