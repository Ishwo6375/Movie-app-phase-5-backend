class MovielistsSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :image, :user
end
