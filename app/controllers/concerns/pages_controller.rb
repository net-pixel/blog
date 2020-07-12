class PagesController < ApplicationController
  def search
    @search = Article.ransack(params[:q])
    @articles = @search.result.includes(:category)
  end
end
