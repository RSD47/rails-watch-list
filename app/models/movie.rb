class Movie < ApplicationRecord
  validates :title, uniqueness: true, presence: true
  validates :overview, presence: true
  has_many :lists, through: :bookmark
  has_many :bookmarks
end
