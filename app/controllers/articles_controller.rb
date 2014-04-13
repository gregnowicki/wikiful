class ArticlesController < ApplicationController
  before_filter :authorize, only: [:new]

  def index
    @articles = Article.order(updated_at: :desc).limit(25)
  end

  def show
    @article = Article.find(params[:id])

    respond_to do |format|
      format.html
      format.js
    end

  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.create(article_params)
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.update(article_params)
    redirect_to @article
  end

  private
  def article_params
    params.require(:article).permit(:title, :content, :category_ids => [])
  end

end
