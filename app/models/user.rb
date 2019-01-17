class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

 has_many :topics
 has_many :comments

 validates :username, :favorite_weapon, :splatoon_game, :timezone, :voice_chat, :language, :friend_code,
           presence: true, length: {minimum: 1}

 validates_inclusion_of :voice_chat, :in =>[true, false]

 validates_uniqueness_of :email, :username, :friend_code

end
