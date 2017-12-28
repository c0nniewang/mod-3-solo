class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :url, :title, :author, :publishedAt, :source
end
