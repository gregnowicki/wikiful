class CategoriesController < ApplicationController

  def index
    @categories = Category.all.order(:name)
  end
  
  def show
    @category = Category.find(params[:id]) #.articles.order(created_at: :desc)
  end
  
end
