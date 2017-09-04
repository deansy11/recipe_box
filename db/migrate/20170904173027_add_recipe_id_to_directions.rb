class AddRecipeIdToDirections < ActiveRecord::Migration[5.1]
  def change
    add_column :directions, :recipe_id, :integer
  end
end
