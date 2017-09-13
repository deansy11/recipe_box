class DirectionsController < ApplicationController
  def index
  end

  def new
    @recipe = Recipe.find_by(id: params[:recipe_id])
    @direction = Direction.new
  end

  def create
    @recipe = Recipe.find_by(id: params[:recipe_id])
    @direction = Direction.new
    @direction.recipe = @recipe

    respond_to do |format|
      if @answer.save
        format.html { redirect_to recipes_url }
        format.json { render :show, status: :created, title: @ingredient }
      else
        format.html { render :new }
        format.json { render json: @ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit

  end

  def destroy
    @direction.destroy
    respond_to do |format|
        format.html { redirect_to recipes_url, notice: 'Step was successfully destroyed.' }
        format.json { head :no_content }
  end

  private

    def ingredient_params
      params.require(:direction).permit(:description)
    end

end
