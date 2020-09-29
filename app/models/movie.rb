class Movie < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :year, presence: true
  validates :plot, length: { in: 6..500 }

  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres

  scope :english, -> { where(english: true)}
end
