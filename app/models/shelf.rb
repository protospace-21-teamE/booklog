class Shelf < ApplicationRecord
  belongs_to :user
  has_many :users, through: :follows
end
