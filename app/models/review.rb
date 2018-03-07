class Review < ApplicationRecord
  belongs_to :book
  belongs_to :user
  has_many :tags, through: :tags_reviews
  has_many :categories, through: :categories_reviews
end
