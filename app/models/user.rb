class User < ApplicationRecord
 has_many :reviews, dependent: :destroy
 has_many :movies, through: :reviews
 has_many :movielist, dependent: :destroy

 validates :username, presence: true, uniqueness: true
 validates :email, presence: true, uniqueness: true
 validates :password_digest, presence: true
end
