class BlogPostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content
end
