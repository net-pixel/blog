class PagesController < ApplicationController
  def search
    @search = Article.ransack(params[:q])
    @articles = @search.result.includes(:category)
  end
  def search_result
    @search = Article.ransack(params[:q])
    @articles = @search.result.includes(:category)
  end
end
