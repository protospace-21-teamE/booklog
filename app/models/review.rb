class Review < ApplicationRecord
  belongs_to :book
  belongs_to :user
  has_many :tags, through: :tags_reviews
  has_many :categories, through: :categories_reviews
  enum reading_status:{未設定:0, 読みたい:1, 読み終わった:2, 積読:3}
end
