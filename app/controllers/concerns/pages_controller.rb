class PagesController < ApplicationController
  def search
    @search = Article.ransack(params[:q])
    @articles = @search.result

  end
  def search_result
    @search = Article.ransack(params[:q])
    @articles = @search.result
  end

  def tag
    if params[:tag_name]
      @articles = Article.tagged_with("#{params[:tag_name]}")
      @tags = ActsAsTaggableOn::Tag.all
    end
  end
end
