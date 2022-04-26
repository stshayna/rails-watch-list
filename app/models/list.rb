class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  validates :name, uniqueness: true
  validates_presence_of :name, :photo
  has_one_attached :photo # cloudinary
  has_many :reviews, dependent: :destroy
end
