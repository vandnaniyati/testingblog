class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy, :like]
  def index
    @articles = Article.all
  end

  def show
  end

  def new
   @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to articles_path, notice: "article create succesfully"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @article.update(article_params)
      redirect_to articles_path, notice: "article update succesfully"
    else
      render :edit
    end
  end

  def like
    if @article.is_liked_by_user?(current_user.id)
      @article.likes.find_by(user_id: current_user.id).delete
      message = "Disliked successfully."
    else
      @article.likes.create(user_id: current_user.id)
      message = "Liked successfully."
    end

    respond_to do |format|
      format.html { redirect_to article_url(@article), notice: message }
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :body, :picture)
  end
end
