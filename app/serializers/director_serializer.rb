class DirectorSerializer < ActiveModel::Serializer
  attributes :id, :name, :bio, :age, :image
end
