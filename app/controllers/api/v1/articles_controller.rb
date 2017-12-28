class Api::V1::ArticlesController < ApplicationController
  before_action :set_article, only: [:show,:update,:destroy]

  def index
    articles = Article.all
    render json: articles, status: 200
  end

  def create
    article = Article.create(note_params)
    render json: article, status: 201
  end

  def update
    @article.update(article_params)
    render json: @article, status: 200
  end

  def destroy
    articleId = @article.id
    @article.destroy
    render json: {message:"Zap! Note deleted", articleId:articleId}
  end

  def show
    render json: @article, status: 200
  end

  private
  def article_params
    params.permit(:id, :url, :title, :author, :publishedAt, :source)
  end

  def set_note
    @article = Article.find(params[:id])
  end
end
