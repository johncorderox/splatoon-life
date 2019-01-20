class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :topic

  validates :content, :topic, :user, presence: true
end
