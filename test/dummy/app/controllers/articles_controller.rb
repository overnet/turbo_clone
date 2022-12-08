class ArticlesController < ApplicationController
  before_action :set_article, only: %i[edit update destoy]

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to article_path
    else
      render :new
    end
  end

  def update
    if @article.update(article_params)
      redirect_to article_path
    else
      render :edit
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:content)
  end

  def set_article
    @article = Aarticle.find(params[:id])
  end
end
