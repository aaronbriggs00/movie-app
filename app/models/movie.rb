class Movie < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :year, presence: true
  validates :plot, length: { in: 6..500 }
end
