class IngredientsController < ApplicationController
  def index
  end

  def create
    @ingredient = Ingredient.new
  end
end
