class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user, optional: true
  validates :post_id, :content, presence: true
  validate :author_or_guest_presence

  private
    def author_or_guest_presence
      if user_id.nil?
        if guest_name.blank?
          errors.add(:base, "Name is required for guest comments")
        end
      end
    end
end
