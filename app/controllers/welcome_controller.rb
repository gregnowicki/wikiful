class WelcomeController < ApplicationController
  def index
    @recent_articles = Article.limit(5)
  end
end
