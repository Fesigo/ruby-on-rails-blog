class Post < ApplicationRecord
  extend FriendlyId

  has_many :comments, dependent: :destroy
  belongs_to :user

  validates :title, :content, :user_id, presence: true

  friendly_id :title, use: :slugged
end
