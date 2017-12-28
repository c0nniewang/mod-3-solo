class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :source
      t.string :title
      t.string :url
      t.string :author
      t.datetime :publishedAt
      t.timestamps
    end
  end
end
