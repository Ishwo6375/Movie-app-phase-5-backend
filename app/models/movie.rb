class Movie < ApplicationRecord
   belongs_to :director
  has_many :reviews, dependent: :destroy
  has_many :students, through: :reviews
end
