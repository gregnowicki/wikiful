class WelcomeController < ApplicationController
  def index
    @recent_articles = Article.order(created_at: :desc).limit(15)
  end
end
