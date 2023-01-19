class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  def index
    @articles = Article.all
  end

  def show
  end

  def new
   @article = Article.new
  end

  def create
    if @article.save
      redirect_to article_path notice: "article create succesfully"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @article.update(article_params)
      redirect_to article_path notice: "article update succesfully"
    else
      render :edit
    end
  end

  def destroy
    @article.destroy
    redirect_to @article_path
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :body)
  end
end
