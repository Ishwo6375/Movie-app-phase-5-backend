class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :comment, :rating, :movie, :user
end
