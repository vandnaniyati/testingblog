class Article < ApplicationRecord
  validates :title, presence: true, length:{minimum: 1}
  validates :body, presence: true,   length:{maximum: 1000}
end
