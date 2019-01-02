class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

 has_many :topics
 has_many :comments

 validates :username, presence: true, length: {minimum: 1}

 validates_uniqueness_of :email, :username


end
