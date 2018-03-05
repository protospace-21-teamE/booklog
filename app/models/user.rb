class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, authentication_keys: [:name]

  has_many :reviews, dependent: :destroy
  has_many :categories, dependent: :destroy
  has_one :shelf, dependent: :destroy
  has_many :follows, dependent: :destroy
  has_many :shelves, through: :follows, dependent: :destroy

  has_attached_file :avatar, styles: { medium: "120x120>", thumb: "90x90>" }
  validates_attachment :avatar, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

  validates :name, uniqueness: true
end
