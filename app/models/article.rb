class Article < ApplicationRecord
  validates :title, presence: true, length:{minimum: 1}
  validates :body, presence: true,   length:{maximum: 1000}

  has_many :likes
  has_one_attached :picture
  after_destroy :valid_title

  def is_liked_by_user?(user_id)
    likes.find_by(user_id: user_id).present?
  end

  def valid_title
    # self.title = title.downcase.titleize
    puts "destroy succesful"
  end
end
