class RecipesController < ApplicationController
  def index
    @recipes = Recipe.page(1).per(4)
  end

  def new
    @recipe = Recipe.new
  end

def create
  @recipe = Recipe.new(recipe_params)

  respond_to do |format|
    if @recipe.save
      format.html { redirect_to @recipe, notice: 'Recipe was successfully created.' }
      format.json { render :show, status: :created, location: @recipe }
    else
      format.html { render :new }
      format.json { render json: @recipe.errors, status: :unprocessable_entity }
    end
  end
end

private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipe_params
      params.require(:recipe).permit(:name, :ingredients, :description)
    end
end
