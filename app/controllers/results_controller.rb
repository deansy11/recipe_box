class ResultsController < ApplicationController
  def index
    @pg_search_recipes = PgSearch.multisearch(params[:query])
  end
end
