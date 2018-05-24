class ArticlesController < ApplicationController
  before_action :getArticle,  only: [:getContent, :incLike]
  def getContent
    @contents = Content.where(article_id :params[:id])
  end
  def incLike
    @article.countLike++
    @article.save!
  end
  private
  def getArticle
    @article = Article.find(params[:id])
  end
end
