class Article < ApplicationRecord
  has_many :userArticles
  has_many :users, through: :userArticles
  has_many :comments
end
