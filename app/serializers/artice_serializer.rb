class ArticeSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :slug
end
