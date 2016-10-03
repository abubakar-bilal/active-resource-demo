class ArticlesController < ApplicationController
  before_action :set_article, only: [:show]
  before_action :set_owner, only: [:index]

  def index
    @articles = @owner.articles
  end

  def show
  end

  private

    def set_article
      @article = Article.find_by_id(params[:id])
      render json: "Article not found with id #{params[:id]}".to_json, status: :not_found unless @article
    end

    def set_owner
      @owner = Owner.find_by_name(params[:name])
      render json: "Owner not found with name #{params[:name]}".to_json, status: :not_found unless @owner
    end
end
