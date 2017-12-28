class User < ApplicationRecord
  has_many :userArticles
  has_many :articles, through: :userArticles
end
