class Category < ActiveRecord::Base
  has_many :article_categories
  has_many :articles, through: :article_categories
  #accepts_nested_attributes_for :articles
  
  validates_uniqueness_of :name
  
end
