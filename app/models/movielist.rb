class Movielist < ApplicationRecord
  belongs_to :user

  validates :title, presence:true, uniqueness: true
  validates :description, presence:true
  validates :image, presence:true, uniqueness:true
end
