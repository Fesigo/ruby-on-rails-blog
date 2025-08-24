class Comment < ApplicationRecord
  belongs_to :post
  validates :post_id, :content, :guest_name, presence: true
end
