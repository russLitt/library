class ArticlesController < ApplicationController

def show
  @articles = Article.find(params[:id])
end

def new
end

def create
  @articles = Article.new(params[:article].permit(:title, :text))

  @articles.save
  redirect_to @articles
end

private

  def article_params
    params.require(:article).permit(:title, :text)
  end


end
