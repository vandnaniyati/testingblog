class Article < ApplicationRecord
  validates :title, presence: true, length:{minimum: 1}
  validates :body, presence: true,   length:{maximum: 1000}

  has_many :likes

  def is_liked_by_user?(user_id)
    likes.find_by(user_id: user_id).present?
  end
end
