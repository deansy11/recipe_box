class ResultsController < ApplicationController
  def index
    @pg_search_recipes = PgSearch.multisearch(params[:query]).page(params[:page]).per(10)
  end
end
