class IngredientsController < ApplicationController
  def index
  end

  def new
    @recipe = Recipe.find_by(id: params[:recipe_id])
      unless @recipe
        redirect_to ingredients_path
        return
      end
    @ingredient = Ingredient.new(recipe_id: @recipe.id)
  end
end
